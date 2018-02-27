class UsersController < ApplicationController
  before_action :authorize, only: [:show]

  def index
    @users = User.all
    if logged_in?
      redirect_to expenses_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    @user.name = params[:user][:name]
    if @user.save
    redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    return params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
