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
    @room = Room.where(hotel_id: params[:room_id])
    @client = Client.new
    @booking = Booking.new
    @amenities = Amenity.all
    @menu_items = MenuItem.all
     @client = Client.new(client_params)
    if @client.save
      redirect_to hotel_room_path(:hotel_id, :id)
    else
      render :new
    end
  end

<<<<<<< Updated upstream
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
=======
  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number)
>>>>>>> Stashed changes
  end

end
