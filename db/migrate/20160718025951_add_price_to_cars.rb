class AddPriceToCars < ActiveRecord::Migration
  def change
    add_column :cars, :prices, :integer
  end
end
