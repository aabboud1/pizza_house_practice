# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

toppings = [chicken, onion, green pepper, pepperoni, ham, olive, pineapple, spinach, sausage, cheese]
pizza = [hawaiian, california, margherita, pepperoni, veggie, meat, everything]

10.times{Restaurant.create(
            name: Faker::Restaurant.name)}

20.times{Topping.create(
            name: Faker::Food.ingredient)}   
            
10.times{Pizza.create(
            name: Faker::Hipster.word,
            vegetaraian: random_boolean,
            restaurant: restaurants.sample
)}          

    
