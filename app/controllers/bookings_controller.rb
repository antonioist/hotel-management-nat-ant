class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @client = Client.find(params[client_params])
    @room = Room.find(params[:room_id])
    @worker = Worker.where(hotel_id: params[:hotel_id])
    @booking.room_id ||= @client.room_id
    @booking.client = @client
    if @booking.save
      redirect_to room_categories_path(@room_category)
    else
      render :new
    end
  end

  private

  def booking_params
      params.require(:booking).permit(:category)
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number)
  end
end
