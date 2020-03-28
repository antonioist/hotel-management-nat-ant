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
    @room = Room.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def show
    @room_category = RoomCategory.where(hotel_id: params[:category_id])
    @client = Client.new
    @booking = Booking.new
    @amenities = Amenity.all
    @menu_items = MenuItem.all

  end

  def update
    if @room.update(room_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def room_params
    params.require(:room).permit(:number)
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number)

  end

end
