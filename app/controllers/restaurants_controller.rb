class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    begin
      @restaurant = Restaurant.find(params[:id])    
    rescue => exception
      puts "SAD"
    end
    
    if @restaurant 
      respond_to do |format|
        format.html
        format.json { render :json => @restaurant }
      end
    else
      #Alternative
      # render status: 404
      # head :not_found
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
    
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    respond_to do |format|
      if @restaurant.save
        # redirect_to @restaurant
        format.turbo_stream
      else
        #Alternative
        # render :new
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
