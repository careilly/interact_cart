class CreateInteractCartCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :interact_cart_carts do |t|
      t.integer :customer_id

      t.timestamps
    end
  end
end
