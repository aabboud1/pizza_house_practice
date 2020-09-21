class PizzasController < ApplicationController

    def index
        @pizzas = Pizza.all 
    end

    def show
        @pizza = Pizza.find(params[:id])
    end

    def new
        @pizza = Pizza.new
    end

    def create

        name = params["pizza"]["name"]
        vegetarian = params["pizza"]["vegetarian"]
            pizza = Pizza.create(name: name, vegetarian: vegetarian)
            toppings = params["pizza"]["topping"]
            toppings.each do |topping|
                x = Topping.find_or_create_by(name: topping)
                pizza.toppings << x
            end
            redirect_to pizza_path(pizza.id)
    end

    def edit
    end

    def update
    end

    def destroy
        @pizza = Pizza.destroy(params[:id])
        redirect_to pizza_path
    end

end
