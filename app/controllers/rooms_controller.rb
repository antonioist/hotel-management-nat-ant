class RoomsController < ApplicationController
  def index
    @rooms = Room.where(hotel_id: params[:hotel_id])
    if params[:category_id]
      @rooms = @rooms.where(room_category_id: params[:category_id])
    end
  end

  def index_edit
    @rooms = Room.where(hotel_id: params[:hotel_id])
    if params[:category_id]
      @rooms = @rooms.where(room_category_id: params[:category_id])
    end
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def show
    @room = Room.find(params[:id])
    @client = Client.new
    @booking = Booking.new
  end

  def update
    if @room.update(room_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def create
    @room = Room.new(room_params)
    @hotel = Hotel.find(params[:hotel_id])
    @room.hotel = @hotel
    if @room.save
      redirect_to hotel_tabs_path(hotel)
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:number, :hotel_id)
  end

end
