class Restaurant < ApplicationRecord
    has_many :pizzas
    has_many :toppings
end
