class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where(user_id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end
end
