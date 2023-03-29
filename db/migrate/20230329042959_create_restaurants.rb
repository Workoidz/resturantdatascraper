class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :type
      t.boolean :multi_locations

      t.timestamps
    end
  end
end
