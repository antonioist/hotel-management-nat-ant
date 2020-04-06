class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save

      redirect_to hotel_path(@hotel, room_category_id: room_category.category)

      # action=>"show", :controller=>"hotels", :hotel_id=>nil, :id=>nil}
    else
      render 'rooms/show'
    end
  end




  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number,
      :bookings_attributes => [:category, :worker_id]
    )
  end
  def booking_params
    params.require(:booking).permit(:category, :work_id)
  end
end
