class AddImageToResturants < ActiveRecord::Migration[7.0]
  def change
    add_column :resturants, :image, :string
  end
end
