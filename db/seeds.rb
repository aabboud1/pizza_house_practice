# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Topping.destroy_all
Pizza.destroy_all
PizzaTopping.destroy_all

def random_boolean
    rand() > 0.5
end

10.times{Restaurant.create(
            name: Faker::Restaurant.name)}

100.times{Topping.create(
            name: Faker::Food.ingredient)}   

restaurants = Restaurant.all  
      
            
30.times{Pizza.create(
            name: Faker::Hipster.word,
            vegetarian: random_boolean,
            restaurant: restaurants.sample
)}          

topping = Topping.all
pizza = Pizza.all

 100.times{PizzaTopping.create(
            topping_id: topping.sample.id,
            pizza_id: pizza.sample.id
 )}
    
