class AddAdressToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :country, :string
    add_column :orders, :city, :string
    add_column :orders, :postal_code, :string
    add_column :orders, :street, :string
  end
end
