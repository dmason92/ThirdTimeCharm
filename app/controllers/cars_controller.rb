class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  def show
    id = params[:id] # retrieve car ID from URI route
    @car = Car.find(id) # look up car by unique ID
    # will render app/views/cars/show.html.haml by default
  end
end
