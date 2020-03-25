class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @client = Client.find(params[:client_id])
     @booking.room = @client.room
    @booking.client = @client
    if @booking.save
      redirect_to room_categories_path(@room_category)
    else
      render :new
    end
  end

  private

  def booking_params
      params.require(:booking).permit(:category, :room_id, :worker_id, :client_id)
  end

end


