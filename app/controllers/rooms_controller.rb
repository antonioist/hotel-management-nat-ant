class RoomsController < ApplicationController
  before_action :set_room, only: [:edit, :update, :destroy, :show]

  def index
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = Room.where(hotel_id: params[:hotel_id])
    if params[:category_id]
      @rooms = @rooms.where(room_category_id: params[:category_id])
    end
  end

  def show
    @room = Room.find(params[:room_id])
    @menu_items = MenuItem.all
    @client = Client.new
    @client.bookings.build

  end

  def new
    @room = Room.new
    @hotel = Hotel.find(params[:hotel_id])
  end

  def create
    @room = Room.new(room_params)
    @hotel = Hotel.find(params[:hotel_id])
    @room.hotel = @hotel
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
    @rooms = Room.where(hotel_id: params[:hotel_id])
  end

  def room_params
    params.require(:room).permit(:number, :room_category_id)
  end


  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number,
      :booking_attributes => [:category, :worker_id]
    )
  end


end
