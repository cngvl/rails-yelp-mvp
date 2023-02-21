class RestaurantsController < ApplicationController
  def index
    # raise
    @restaurants = Restaurant.all
  end

end
