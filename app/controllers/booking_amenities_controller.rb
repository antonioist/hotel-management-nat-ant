class BookingAmenitiesController < ApplicationController

  def create
    @booking_amenity = BookingAmenity.new(booking_amenity_params)
    @booking = Booking.where( hotel_id: params[:id])

    if @booking_amenity.save
      redirect_to hotels_path(@hotel)
    else
      render 'bookings/show'
    end
  end


  private

  def booking_amenity_params
    params.require(:booking_amenity).permit(:booking_id, :amenity_id)
  end

end
