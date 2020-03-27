class UsersController < ApplicationController
  def dashboard
    @hotels = Hotel.all
  end
end
