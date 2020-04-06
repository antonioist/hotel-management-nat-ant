class BookingsController < ApplicationController
  def show
    @booking = Booking.where(hotel_id: params[:hotel_id])
    @client = Client.where(hotel_id: params[:hotel_id])
  end
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @room = Room.where(room_id: params[@room])
    @booking.room = @room
    if @booking.save
      redirect_to room_categories_path(@hotel, category_id: room_category.id, room_id: room.id)
    else
      render 'rooms/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:category, :worker_id, :client_id, :room_id
       :client_attributes => [:first_name, :last_name, :email, :social_number]
      )
  end
end

