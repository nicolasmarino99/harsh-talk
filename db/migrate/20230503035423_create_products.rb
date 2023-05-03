class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :inventory_quantity
      t.datetime :inventory_updated_time
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
