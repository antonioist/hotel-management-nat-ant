class UsersController < ApplicationController
  def dashboard
    @hotels = Hotel.all
    @room_categories = RoomCategory.all
    @rooms = Room.all
  end

  def tabs
    @hotel = current_user.hotel || Hotel.new
    @room_categories = RoomCategory.all.order('category ASC')
    @rooms = Room.all.where(hotel_id: params[:hotel_id]).order('number ASC')
    @menu_items = MenuItem.all.order('name ASC')
    @amenities = Amenity.all.order('drink ASC')
    @workers = Worker.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
    @users = User.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
  end
end
