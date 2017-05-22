class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_order

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def misix (settings)

    settings.each do |s|
      if s[0].to_s == params[:action]
        current_admin.amenities.each do |a|
          if a == s[1]
            return
          end
        end
        redirect_to root_path
      end
    end

  end

end
