class UsersController < ApplicationController
  def index
    @users = User.order('id DESC')
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:author, :photo_url, :date_taken)
  end
end