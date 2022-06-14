class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    respond_to do |format|
      if @review.save
        format.html { redirect_to @restaurant, notice: "yes" }
        # redirect_to @restaurant
        format.js { render false ? :custom_create : :create }
      else
        format.html { render action: new }
        format.js 
        # render :new
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
