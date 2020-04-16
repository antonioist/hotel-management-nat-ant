class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @hotel = Hotel.where(hotel_id: params[:id])
    @room = Room.where(hotel_id: params[:id])
    @client = Client.where(hotel_id: params[:id])
    @bookings = Booking.all
    @booking_amenity = BookingAmenity.new
  end

end

