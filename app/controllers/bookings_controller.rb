class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @hotel = Hotel.where(hotel_id: params[:id])
    @room = Room.where(hotel_id: params[:id])
    @client = Client.where(hotel_id: params[:id])
    @bookings = Booking.all
  end

  def favorite
    booking = Booking.find(params[:id])
    current_user.favorite(booking)
    redirect_to booking_history_path
  end

  def unfavorite
    booking = Booking.find(params[:id])
    current_user.unfavorite(booking)
    redirect_to booking_history_path
  end

end
