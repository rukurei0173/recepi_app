class RenameFoldernameColumnToFolders < ActiveRecord::Migration[5.2]
  def change
    rename_column :folders, :foldername, :foldername_id
  end
end
