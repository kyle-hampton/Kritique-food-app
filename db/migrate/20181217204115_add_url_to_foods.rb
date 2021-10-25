class AddUrlToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :remote_image_url, :string
  end
end
