class StatusMailer < ApplicationMailer

  def welcome_email(user, status)
    @user = user
    @stat = OrderStatus.find(status).name
    mail(to: 'hebidkage@gmail.com', subject: 'Status')
  end

end
