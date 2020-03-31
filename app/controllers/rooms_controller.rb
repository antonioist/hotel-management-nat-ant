class RoomsController < ApplicationController
  before_action :set_room, only: [:edit, :update, :destroy, :show]

  def index
    @rooms = Room.where(hotel_id: params[:hotel_id])
    if params[:category_id]
      @rooms = @rooms.where(room_category_id: params[:category_id])
    end
  end

  def show
    @client = Client.new
    @booking = Booking.new
    @amenities = Amenity.all
    @menu_items = MenuItem.all
  end

  def new
    @room = Room.new
    @hotel = Hotel.find(params[:hotel_id])
  end

  def create
    @room = Room.new(room_params)
    @hotel = Hotel.find(params[:hotel_id])
    @room.hotel = @hotel
    @room.room_category = @room_category
    if @room.save
      redirect_to hotel_tabs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to hotel_tabs_path(@room.hotel)
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to hotel_tabs_path(@room.hotel)
  end



  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:number)
  end

end
