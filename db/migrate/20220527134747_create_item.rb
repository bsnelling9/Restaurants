class CreateItem < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.text :description
      t.text :ingrediants
      t.string :resturant
      t.timestamps
    end
  end
end
