class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.string :food_type
      t.timestamps
    end
  end
end
