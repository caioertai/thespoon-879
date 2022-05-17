class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # --- CRUD ---
  # |C|reate
  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # |C|reate
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    # Redirect the user somewhere
    # redirect_to restaurants_path # /restaurants
    redirect_to restaurant_path(@restaurant.id) # /restaurants/id_of_the_new_restaurants
  end

  # |R|ead
  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # |R|ead
  # GET /restaurants/:id
  def show
  end

  # |U|pdate
  # GET /restaurants/:id/edit
  def edit
  end

  # |U|pdate
  # PATCH /restaurants/:id
  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant.id)
  end

  # |D|elete
  # DELETE /restaurants/:id
  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  # Strong params pattern
  def restaurant_params
    params.require(:restaurant).permit(:name, :rating, :address)
  end
end
