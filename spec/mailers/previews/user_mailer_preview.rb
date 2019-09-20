# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def new_user_email
    @user = User.first
    UserMailer.with(user: User.first).new_user_email
  end
end
