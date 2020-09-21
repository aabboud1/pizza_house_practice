class Pizza < ApplicationRecord
    has_many :pizza_toppings
    has_many :toppings, through: :pizza_toppings
    belongs_to :restaurant, optional: true

    def display_veg
        return self.vegetarian ? "Yes" : "No"
    end
end
