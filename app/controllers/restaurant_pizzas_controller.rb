class RestaurantPizzasController < ApplicationController
    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        pizza = Pizza.find(restaurant_pizza.pizza_id)
        render json: pizza, status: :created
    end

    private

    def restaurant_pizza_params
        params.permit(:restaurant_id, :pizza_id, :price)
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
