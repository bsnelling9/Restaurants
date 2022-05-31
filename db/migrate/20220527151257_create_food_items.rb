class CreateFoodItems < ActiveRecord::Migration[7.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :foodtype
      t.text :description
      t.string :glutenfree
      t.string :vegan
      t.text :ingrediants
      t.string :resturant

      t.timestamps
    end
  end
end
