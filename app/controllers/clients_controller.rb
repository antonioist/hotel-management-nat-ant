class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to bookings_path(@booking)
    else
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number)
  end
end
