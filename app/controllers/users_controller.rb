class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :approve, :disapprove]
  before_action :correct_user, only: [:edit, :update]
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  def approve
    @user.update(approved: true )
    respond_to do |format|
      format.html { redirect_to root_url, notice: "You have succesfully approved the user"}
    end
  end

  def disapprove
    @user.update(approved: false )
    respond_to do |format|
      format.html { redirect_to root_url, notice: "You have succesfully disapproved the user"}
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

    def correct_user
      # .to_i converts values to integers here because params[:id] is a string
      # Without this current_user.id and params[:id] would never match
      if current_user.id != params[:id].to_i
        redirect_to root_url
      end
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :institution, :email, :gender, :id_number)
    end
end
