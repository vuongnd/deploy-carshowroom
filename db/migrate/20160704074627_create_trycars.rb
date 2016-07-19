class CreateTrycars < ActiveRecord::Migration
  def change
    create_table :trycars do |t|
      t.string :name
      t.integer :old
      t.string :address
      t.string :phone
      t.string :driver_license
      t.integer :car_id
      t.integer :fee_trial

      t.timestamps null: false
    end
  end
end
