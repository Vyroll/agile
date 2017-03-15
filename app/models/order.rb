class Order < ApplicationRecord
  belongs_to :shipping
  belongs_to :order_status
  belongs_to :user
  has_many :order_items
  before_create :set_order_status

private

  def set_order_status
    self.order_status_id = Status.find(name: "In Progress").id
  end


end
