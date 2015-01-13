class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
      t.string :title
      t.text :description
      t.string :git_repository_url

      t.timestamps null: false
    end
  end
end
