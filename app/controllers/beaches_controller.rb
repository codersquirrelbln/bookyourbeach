class BeachesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @beaches = Beach.all
  end

  def show
    @beach = Beach.find(params[:id])
<<<<<<< HEAD
    @booking = Booking.new
  end
=======
  end

>>>>>>> 252c5721bb5335f927b1dfbd61366fd85f3e2282
end

