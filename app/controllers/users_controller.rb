class UsersController < ApplicationController
  def dashboard
    @hotels = Hotel.all
    @room_categories = RoomCategory.all
    @rooms = Room.all
  end

  def tabs
    @room_categories = RoomCategory.all
    @rooms = Room.all.where(hotel_id: params[:hotel_id])
    @menu_items = MenuItem.all.order('name ASC')
    @amenities = Amenity.all.order('drink ASC')
    @workers = Worker.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
    @users = User.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
  end
end
