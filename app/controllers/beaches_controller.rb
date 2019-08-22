class BeachesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @beaches = Beach.all
  end

  def show
    @beach = Beach.find(params[:id])
    @booking = Booking.new
  end
end

