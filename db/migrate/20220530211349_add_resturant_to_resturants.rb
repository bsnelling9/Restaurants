class AddResturantToResturants < ActiveRecord::Migration[7.0]
  def change
    add_column :resturants, :resturant, :string
  end
end
