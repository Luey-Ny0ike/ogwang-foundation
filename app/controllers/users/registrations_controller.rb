class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def create
  super
  if @user.persisted?
    UserMailer.with(user: @user).welcome_email.deliver_now
    UserMailer.with(user: @user).new_user_email.deliver_now
  end
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :id_number, :institution, :email, :password, :password_confirmation, :about, :gender)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :id_number, :institution, :email, :password, :approved, :password_confirmation, :gender, :current_password, :about)
  end
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name id_number institution about gender])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name about gender approved])
  end
end
