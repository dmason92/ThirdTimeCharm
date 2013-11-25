class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  def show
    id = params[:id] # retrieve car ID from URI route
    @car = Car.find(id) # look up car by unique ID
    # will render app/views/cars/show.html.haml by default
  end
  def new
    # default: render 'new' template
  end
  def create
    @car = Car.create!(params[:car])
    flash[:notice] = "#{@car.make} #{@car.model} was successfully created."
    redirect_to cars_path
  end
  def edit
    @car = Car.find params[:id]
  end
  def update
    @car = Car.find params[:id]
    @car.update_attributes!(params[:car])
    flash[:notice] = "#{@car.make} #{@car.model} was successfully updated."
    redirect_to car_path(@car)
  end
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    flash[:notice] = "#{@car.make} #{@car.model} was successfully deleted."
    redirect_to cars_path
  end
end
