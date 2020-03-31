class UsersController < ApplicationController
  def dashboard
    if current_user.superadmin_role
    @hotels = Hotel.all
  end

  def tabs
    if current_user.superadmin_role
    @hotel = current_user.hotel || Hotel.new
    @room_categories = RoomCategory.all.order('category ASC')
    @rooms = Room.all.where(hotel_id: params[:hotel_id]).order('number ASC')
    @menu_items = MenuItem.all.order('name ASC')
    @amenities = Amenity.all.order('drink ASC')
    @workers = Worker.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
    @users = User.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
    end
  end      
end
