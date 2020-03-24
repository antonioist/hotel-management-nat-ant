class RoomsController < ApplicationController
  def index
    @rooms = Room.all.where(hotel_id: params[:hotel_id])
  end

  def show
    @room = Room.find(params[:id])
  end
end
