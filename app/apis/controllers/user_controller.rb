class Apis::ApisController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = UserService.list_users
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = UserService.create_user(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update_user(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.delete_user
    head :no_content
  end

  private

  def set_user
    @user = UserService.find_user(params[:id])
  end

  def user_params
    params.require(:data).permit(:name, :email, :password, :tel, :role)
  end
end
