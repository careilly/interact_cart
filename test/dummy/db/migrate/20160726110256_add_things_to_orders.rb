class AddThingsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :name, :string
    add_column :orders, :address, :string
    add_column :orders, :phone, :string
  end
end
