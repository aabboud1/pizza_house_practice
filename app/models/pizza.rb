class Pizza < ApplicationRecord
    has_many :pizza_toppings
    has_many :toppings, through: :pizza_toppings
    belongs_to :restaurant
end
