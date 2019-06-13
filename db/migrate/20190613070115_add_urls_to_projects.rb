class AddUrlsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :github_url, :string
    add_column :projects, :site_url, :string
  end
end
