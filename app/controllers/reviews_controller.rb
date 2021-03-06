class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save ? (redirect_to restaurant_path(@restaurant)) : (render :new)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
