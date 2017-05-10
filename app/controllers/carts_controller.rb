class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def order

  end
  
  def finalize
    Order.find(current_order.id).update_attributes(order_status_id: 2)
  end

end
