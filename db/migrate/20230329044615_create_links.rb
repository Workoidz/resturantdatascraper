class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :platform
      t.string :url
      t.date :last_changed_on
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
