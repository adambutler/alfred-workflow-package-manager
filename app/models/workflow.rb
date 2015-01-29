class Workflow < ActiveRecord::Base
  extend FriendlyId
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :user
  validates_uniqueness_of :slug
  friendly_id :title, use: :slugged
end
