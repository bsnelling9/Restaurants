class AddUserIdToFoodItems < ActiveRecord::Migration[7.0]
  def change
    add_column :food_items, :user_id, :integer
  end
end
