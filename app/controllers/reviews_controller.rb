class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update]

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
        format.js { render :create }
      else
        format.html { render action: new }
        format.js 
        # render :new
      end
    end
  end

  def edit
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @review.update(review_params)
      redirect_to @restaurant, notice: "Review was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    # binding.pry
    @review = Review.find(params[:id])
  end
end
