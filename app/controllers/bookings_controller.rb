class BookingsController < ApplicationController
  def create
    @booking = Booking.new(bookings_params)
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :beach_id, :user_id)
  end
end
