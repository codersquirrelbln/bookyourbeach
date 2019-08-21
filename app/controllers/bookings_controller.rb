class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @beach = Beach.find(params[:beach_id])
  end

  def create
    @beach = Beach.find(params[:beach_id])
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.beach = @beach
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  # def show
  #   @booking = Booking.find(params[:id])

  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
