class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :introduction

      t.timestamps null: false
    end
  end
end
