class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :stock
      t.references :category, foreign_key: true
      t.decimal :price, :precision => 6, :scale => 2

      t.timestamps
    end
  end
end
