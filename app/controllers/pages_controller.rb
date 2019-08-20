class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def index
    @bookings = Booking.all
  end

  def dashboard
    @bookings = current_user.bookings
  end
end
