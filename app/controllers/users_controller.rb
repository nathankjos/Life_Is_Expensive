class UsersController < ApplicationController
  before_action :authorize, only: [:show]

  def index
    @users = User.all
    # if logged_in?
    #   redirect_to expenses_path
    # else
      # redirect_to new_user_path
    # end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    # @user.name = params[:user][:name]
    if @user.save
    session[:user_id] = @user.id
    redirect_to edit_user_path(current_user.id)
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user.id)
    else
      redirect_to edit_user_path @user.id
    end
  end

  def destroy
    current_user.destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params
    return params.require(:user).permit(:name, :email, :password, :password_confirmation, :budget)
  end
end
