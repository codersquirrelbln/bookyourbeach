class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
   # @beach = Booking.find(params[:beach_id])
    @bookings = current_user.bookings
  end

  def index
    @bookings = Booking.all
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    beach = @booking.beach
    @booking.destroy
    redirect_to dashboard_path, notice: 'Your booking was successfully cancelled.'
  end

private

  def set_booking
      @booking = Booking.find(params[:id])
  end
end
