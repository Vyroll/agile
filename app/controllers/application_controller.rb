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

  def permissions (settings)
    if admin_signed_in?
      settings.each do |s|
        if s[0].to_s == params[:action]
          current_admin.amenities.each do |a|
            if a == s[1]
              return
            end
          end
          redirect_to new_user_session_path, alert: "Musisz mieć uprawnienia \"#{s[1]}\", aby uzyskać dostęp"
        end
      end
    end
  end

  def authenticate_any!
    if admin_signed_in? or user_signed_in?
      true
    else
      redirect_to new_user_session_path, alert: 'Musisz być zalogowany aby kontynuować'
    end
  end



end
