class CreateRcCars < ActiveRecord::Migration[7.0]
  def change
    create_table :rc_cars do |t|
      t.string :name
      t.text :description
      t.string :make
      t.string :model
      t.string :category

      t.timestamps
    end
  end
end
