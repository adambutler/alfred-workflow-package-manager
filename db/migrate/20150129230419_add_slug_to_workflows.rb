class AddSlugToWorkflows < ActiveRecord::Migration
  def change
    add_column :workflows, :slug, :string
  end
end
