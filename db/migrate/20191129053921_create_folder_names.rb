class CreateFolderNames < ActiveRecord::Migration[5.2]
  def change
    create_table :folder_names do |t|
      t.text :folder_name

      t.timestamps
    end
  end
end
