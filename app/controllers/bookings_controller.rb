class BookingsController < ApplicationController
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end
  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(params[:booking].permit(:client_id, :start_time, :length))
      flash[:notice] = 'Your booking was updated succesfully'
    else
      render 'edit'
    end
  end
end
