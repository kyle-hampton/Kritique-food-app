class AddFoodExpantionToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :food_description, :string
    add_column :foods, :food_review, :string
    add_column :foods, :food_original_score, :integer
  end
end
