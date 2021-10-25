class ReviewsController < ApplicationController
  def index
    @review = Review.all

  end

  def new
    @review = Review.new
  end

  def create

    review = Review.new(reviewPermit)
    review.user_id = current_user.id
    review.food_id = params[:review][:food_id]
    if review.save!
      redirect_to foods_path
    else
      redirect_to new_review_path
    end
  end

  def show
    @reviews = Review.find(params[:id])

  end

  def edit
  end

  private
  def reviewPermit
    params.require(:review).permit(:review, :score, :user_id, :food_id)
  end

end
