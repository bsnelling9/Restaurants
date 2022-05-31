class AddTitleToFoodItems < ActiveRecord::Migration[7.0]
  def change
    add_column :food_items, :title, :string
  end
end
