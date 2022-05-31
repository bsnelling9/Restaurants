class AddTitleToResturants < ActiveRecord::Migration[7.0]
  def change
    add_column :resturants, :title, :string
  end
end
