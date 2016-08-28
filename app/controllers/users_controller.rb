class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
    @user.addresses.build
  end

  def update
    @user = User.find(params[:id])
    @user.update(my_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def my_params
    params.require(:user).permit(:username, :email, :addresses_attributes => [:street, :city, :state, :id])
  end

end
