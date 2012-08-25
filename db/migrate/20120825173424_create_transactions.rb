class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :type
      t.integer :user_id
      t.integer :job_id

      t.timestamps
    end
  end
end
