class StatusMailer < ApplicationMailer

  def welcome_email(user, status, info, dis)
    @user = user
    @stat = OrderStatus.find(status).name
    @info = info
    @dis = dis

    mail(to: 'hebidkage@gmail.com', subject: 'Status')
    # mail(to: user.email, subject: 'Status')
  end

end
