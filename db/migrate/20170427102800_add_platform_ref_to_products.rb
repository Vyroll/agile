class AddPlatformRefToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :platform, foreign_key: true
  end
end
