class AddRestaurantIdToPizza < ActiveRecord::Migration[6.0]
  def change
    add_column :pizzas, :restaurant_id, :integer
  end
end
