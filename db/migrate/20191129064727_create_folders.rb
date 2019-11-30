class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      # foldername_idへの外部キー制約
      t.integer :foldername, foreign_key: true
      t.integer :post_id

      t.timestamps
    end
  end
end
