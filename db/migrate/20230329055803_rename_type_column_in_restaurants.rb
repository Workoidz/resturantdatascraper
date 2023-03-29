class RenameTypeColumnInRestaurants < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :type, :restaurant_type
  end
end
