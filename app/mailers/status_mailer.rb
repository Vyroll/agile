class StatusMailer < ApplicationMailer

  def welcome_email(order, params)

    puts '+++++++++++++++++'
    puts 'order.inspect: '+ order.inspect
    puts 'params.inspect: '+ params.inspect

    puts '+++++++++++++++++'

    @user = order.user
    @stat = order.order_status.name
    @order_id = order.id
    @info = params[:info]

    mail(to: 'hebidkage@gmail.com', subject: 'Zmiana statuso zamówienia nr.' + @order_id.to_s )
    # mail(to: user.email, subject: 'Status')
  end

end
