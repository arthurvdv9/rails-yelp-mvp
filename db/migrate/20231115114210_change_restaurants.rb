class ChangeRestaurants < ActiveRecord::Migration[7.1]
  def change
    change_column :restaurants, :phone_number, :string
    change_column :restaurants, :category, :string
  end
end
