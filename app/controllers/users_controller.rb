class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!

  respond_to :html

  def index
    @users = User.all
    respond_with(@users)
  end

  def show
    respond_with(@user)
  end

  def edit
  end

  def update
    @user.update_attributes(params[:user])
    respond_with(@user)
  end

  def destroy
    @user.destroy
    respond_with(@user)
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
