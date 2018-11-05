class UserMailer < ApplicationMailer
  def welcome_email
  @user = params[:user]
  mail(to: @user.email, subject: 'Thank You and Welcome to Ogwang foundation')
  end

  def new_user_email
    @user = params[:user]
    mail(to: 'nyoikelewis@gmail.com', subject: 'New user has registered')
  end
end
