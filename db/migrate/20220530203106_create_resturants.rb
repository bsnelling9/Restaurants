class CreateResturants < ActiveRecord::Migration[7.0]
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :genre
      t.text :description
      t.text :location
      t.string :glutenfree
      t.string :vegan
      t.string :title
      
      t.timestamps
    end
  end
end
