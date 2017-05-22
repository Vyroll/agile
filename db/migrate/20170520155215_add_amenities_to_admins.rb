class AddAmenitiesToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :amenities, :string
  end
end
