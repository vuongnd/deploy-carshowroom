class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.string :madein
      t.string :color
      t.integer :max_speed
      t.string :fuel_consumption
      t.string :engine_capacity
      t.string :acceleration
      t.string :wheel_size
      t.string :braking_system
      t.string :safety_system
      t.integer :typeofcar_id

      t.timestamps null: false
    end
  end
end
