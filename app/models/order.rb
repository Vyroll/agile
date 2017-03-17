class Order < ApplicationRecord

  has_many :order_items
  before_create :set_order_params
  belongs_to :shipping, optional: true
  belongs_to :order_status, optional: true
  belongs_to :user, optional: true

private

  def set_order_params
    self.order_status_id = OrderStatus.find_by(name: 'In Progress').id
  end

end
