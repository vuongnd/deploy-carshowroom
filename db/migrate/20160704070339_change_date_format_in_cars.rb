class ChangeDateFormatInCars < ActiveRecord::Migration
  def change
    change_column(:cars, :year, :date)
  end
end
