class Workflow < ActiveRecord::Base
  belongs_to :user

  include Tire::Model::Search
  include Tire::Model::Callbacks

  def self.search(params)
    tire.search(load: true) do
      query { string "#{params[:query]}~", default_operator: "AND" } if params[:query].present?
    end
  end
end
