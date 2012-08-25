class CreateUploadedFiles < ActiveRecord::Migration
  def change
    create_table :uploaded_files do |t|
      t.string :name
      t.integer :amazon_s3_id
      t.integer :user_id
      t.string :file_type

      t.timestamps
    end
  end
end
