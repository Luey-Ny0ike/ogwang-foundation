class UserMailer < ApplicationMailer
  def welcome_email
  @user = params[:user]
  mail(to: @user.email, subject: 'Thank You and Welcome to Ogwang foundation')
  end
end
