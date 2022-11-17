class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
    @user=current_user
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end
end
