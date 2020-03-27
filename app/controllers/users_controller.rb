class UsersController < ApplicationController
  def dashboard
    @hotels = Hotel.all
    @room_categories = RoomCategory.all
    @rooms = Room.all
  end
end
