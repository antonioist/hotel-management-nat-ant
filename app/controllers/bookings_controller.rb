class BookingsController < ApplicationController
  def show
    @booking = Booking.where(hotel_id: params[:hotel_id])
    @client = Client.where(hotel_id: params[:hotel_id])
  end
  def new
    @booking = Booking.new
  end

  def create
    @room = Room.where(hotel_id: params[:hotel_id])
    @worker = Worker.where(hotel_id: params[:room_id])
    @client = Client.last
    booking = Booking.new(params[booking_params])
    if @booking.save
      redirect_to hotel_booking_path(:booking_id)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:category, :worker_id, :client_id, :room_id)
  end
end
