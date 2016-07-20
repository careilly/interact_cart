class CreateInteractCartCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :interact_cart_cart_items do |t|
      t.references :cart, foreign_key: true
      t.integer :quantity
      t.decimal :price
      t.string :options
      t.integer :product_id

      t.timestamps
    end
  end
end
