class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :shipping, foreign_key: true
      t.references :order_status, foreign_key: true
      t.references :user, foreign_key: true
      t.string :country
      t.string :city
      t.string :postal_code
      t.string :street

      t.timestamps
    end
  end
end
