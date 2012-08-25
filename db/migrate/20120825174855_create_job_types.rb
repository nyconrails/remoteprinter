class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.string :name
      t.float :price_per_page
      t.boolean :is_active

      t.timestamps
    end
  end
end
