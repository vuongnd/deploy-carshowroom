class CreateTypeofcars < ActiveRecord::Migration
  def change
    create_table :typeofcars do |t|
      t.string :name
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
