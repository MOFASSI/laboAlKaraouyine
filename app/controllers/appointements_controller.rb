class AppointementsController < ApplicationController
  def index
    @appointements = Appointement.all.where(user: current_user)
  end

  def show
    @appointement = Appointement.find(params[:id])
  end

  def new
    @appointement = Appointement.new
  end

  def create
    appointement = Appointement.new(appointement_query)
    appointement.user = current_user
    if appointement.save!
      redirect_to user_path(appointement.user)
    else
      render new
    end
  end

  private

  def appointement_query
    params.require(:appointement).permit(:date_of_appointement, :time)
  end
end
