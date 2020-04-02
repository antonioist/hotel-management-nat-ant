class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :show_map]
  def index
    @hotels = Hotel.all
  end

  def show
    @room_categories = RoomCategory.all
  end

  def geocode
    @hotels = Hotel.geocoded
    @markers = @hotels.map do |hotel|
      {
        lat: hotel.latitude,
        lng: hotel.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hotel: hotel })
      }
    end
  end

  def show_map
    @markers = [
      {
        lat: @hotel.latitude ,
        lng: @hotel.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hotel: @hotel })

      }
    ]
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end
end
