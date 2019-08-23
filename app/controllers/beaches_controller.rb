class BeachesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR location ILIKE :query"
      @beaches = Beach.where(sql_query, query: "%#{params[:query]}%")
    else
      @beaches = Beach.all
    end
  end

  def show
    @beach = Beach.find(params[:id])
    @booking = Booking.new
  end
end
