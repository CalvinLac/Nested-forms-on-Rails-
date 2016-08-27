class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(my_params)
    redirect_to users_path
  end

  private

  def my_params
    params.require(:user).permit(:username, :email)
  end

end
