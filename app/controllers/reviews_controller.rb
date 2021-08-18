class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    # In the path of reviews new, I have access to the restaurant id
    # So I find that instance of the restaurant
    # And now I need to create a new review and add it to that instance
    @review = Review.new()
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
