class BookingItemsController < ApplicationController

  def create
    @booking_item = BookingItem.new(booking_item_params)
    @booking = Booking.where( hotel_id: params[:id])

    if @booking_item.save!
      redirect_to hotels_path(@hotel)
    else
      render 'bookings/show'
    end
  end

  private


  def booking_item_params
    params.require(:booking_item).permit(:booking_id, :menu_item_id)
  end

end
