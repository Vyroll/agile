class CreateShippings < ActiveRecord::Migration[5.0]
  def change
    create_table :shippings do |t|
      t.string :name
      t.decimal :price, :precision => 6, :scale => 2

      t.timestamps
    end
  end
end
