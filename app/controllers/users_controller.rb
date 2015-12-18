class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!

  respond_to :html

  def index
    @users = User.all.paginate(:per_page => 10, :page => params[:page]||1)
  end

  def show
  end

  def edit
  end

  def update
    @user.update_attributes(params[:user])
  end

  def destroy
    @user.destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
