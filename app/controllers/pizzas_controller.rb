class PizzasController < ApplicationController

    def index
        @pizzas = Pizza.all 
    end

    def show
        @pizza = Pizza.find(params[:id])
    end

    def new
        @pizza = Pizza.new
        @restaurants = Restaurant.all
    end

    def create
        name = params["pizza"]["name"]
        vegetarian = params["pizza"]["vegetarian"]
        restaurant = params["pizza"]["restaurant"]
            pizza = Pizza.create(name: name, vegetarian: vegetarian, restaurant: Restaurant.find(params["pizza"]["restaurant"]))
            # if params["pizza"]["topping1"] != ""
            #     pizza.toppings << Topping.find_or_create_by(name: params["pizza"]["topping1"])
            # end
            # if params["pizza"]["topping2"] != ""
            #     pizza.toppings << Topping.find_or_create_by(name: params["pizza"]["topping2"])
            # end
            # if params["pizza"]["topping3"] != ""
            #     pizza.toppings << Topping.find_or_create_by(name: params["pizza"]["topping3"])
            # end
            toppings = params["pizza"]["topping"]
            toppings.each do |topping|
                x = Topping.find_or_create_by(name: topping)
                pizza.toppings << x
            end
            redirect_to pizza_path(pizza.id)
    end

    def edit
        @pizza = Pizza.find(params[:id])
        @restaurants = Restaurant.all
        render :edit
    end

    def update
        @pizza = Pizza.update(params[:id])
        redirect_to pizzas_path
    end

    def destroy
        @pizza = Pizza.destroy(params[:id])
        redirect_to pizzas_path
    end

    # private

    # def pizza_params
    #   params.require(:pizza).permit(:name,:vegetarian, :restaurant_id)
    # end

end



# <%= form_for @pizza do |f| %>
#     <%= f.label :name, "Pizza Name:" %>
#     <%= f.text_field :name %>
#     <br><br>
#     <%= f.label :topping1 %>
#     <%= f.text_field :toppings %>
#     <br><br>
#     <%= f.label :topping2 %>
#     <%= f.text_field :toppings %>
#     <br><br>
#     <%= f.label :topping3 %>
#     <%= f.text_field :toppings %>
#     <br><br>
#     <%= f.label :vegetarian, "Vegetarian?" %>
#     <%= f.select :vegetarian, [true, false] %>
#     <br><br>
#     <%= f.collection_select(:restaurant_id, Restaurant.all, :id, :name) %>
#     <br><br>
#     <%= f.submit button_text %>
#   <% end %>