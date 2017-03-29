class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :github_url,  :string
    add_column :projects, :url,         :string
    add_column :projects, :image,       :string
    add_column :projects, :kind,        :string
  end
end
