class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @appointements = @user.appointements
  end
end
