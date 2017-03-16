class ChangeOrders < ActiveRecord::Migration[5.0]
  def change
  	change_column_null :orders, :user_id, :shipping_id, true
  end
end
