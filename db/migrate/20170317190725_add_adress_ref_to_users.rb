class AddAdressRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :Adress, foreign_key: true
  end
end
