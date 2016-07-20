class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :orderid
      t.references :cart, foreign_key: true
      t.string :email
      t.string :status
      t.string :stripe_token

      t.timestamps
    end
  end
end
