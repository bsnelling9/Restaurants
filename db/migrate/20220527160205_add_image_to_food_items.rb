class AddImageToFoodItems < ActiveRecord::Migration[7.0]
  def change
    add_column :food_items, :image, :string
  end
end
