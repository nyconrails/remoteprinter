class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :printer_id
      t.integer :user_id
      t.integer :job_type_id
      t.string :status
      t.boolean :is_complete
      t.integer :pages

      t.timestamps
    end
  end
end
