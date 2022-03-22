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
    appointement = month_appointement(appointement)
    appointement.user = current_user
    if appointement.save!
      redirect_to user_path(appointement.user)
    else
      render new
    end
  end

  private

  def appointement_query
    params.require(:appointement).permit(:day, :hour)
  end

  def month_appointement(appointement)
    if Date.today.month >= 29 && appoitenement.day < 30
      appointement.month = Date.today.month + 1
    else
      appointement.month = Date.today.month
    end
    appointement
  end
end
