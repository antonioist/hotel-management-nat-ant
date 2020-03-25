class RoomsController < ApplicationController
  def index
    @rooms = Room.where(hotel_id: params[:hotel_id])
    if params[:category_id]
      @rooms = @rooms.where(room_category_id: params[:category_id])
    end
  end

  def show
    @room = Room.find(params[:id])
    @room = Room.find.where(hotel_id: params[:id])
    @client = Client.new
    @booking = Booking.new
  end
end
