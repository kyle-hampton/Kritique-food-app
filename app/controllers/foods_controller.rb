class FoodsController < ApplicationController
  def index
    @food = Food.all

  end

  def new
    @foods = Food.new
  end

  def create
    food = current_user.foods.build(food_params)
    if food.save!
      redirect_to foods_path
    else
      redirect_to new_food_paths
    end
  end

  def show
    @food = Food.find(params[:id])
    @review = Review.where(params[:id])
  end

  def edit
  end

  private
    def food_params
      params.require(:food).permit(:food_name,:user_id, :food_type, :food_description, :food_review, :food_original_score, :location, :image)
    end
end
