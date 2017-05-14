class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def order
    @order_items = current_order.order_items
  end
  
  def finalize
    params[:order][:order_status_id] = 1
    params[:order][:user_id] = current_user.id
    if params[:form_dis].nil?
      params[:order][:country] = current_user.country
      params[:order][:city] = current_user.city
      params[:order][:postal_code] = current_user.postal_code
      params[:order][:street] = current_user.street
    end
    Order.find(current_order.id).update_attributes(cart_params)
    session.delete(:order_id)
    redirect_to root_path
  #   TODO: zapisac w sesji id koszyka i gdy sie zaloguje przypisac id uzytkownika do obecnego koszyka - zapytanie o zalogowanie w momencie przycisk podsumowanie

  end

  private
  def cart_params
    # :order_status_id, :user, :country, :city, :postal_code, :street, :form_dis, shipping: [:shipping_id]
    params.require(:order).permit(:country, :city, :postal_code, :street, :order_status_id, :shipping_id, :user_id)
  end

end
