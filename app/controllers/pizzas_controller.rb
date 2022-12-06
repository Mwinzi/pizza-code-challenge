class PizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        pizzas = Pizza.all
        render json: pizzas, status: :ok
    end

    def show
        pizza = find_pizza
        render json: pizza, status: :ok
    end

    private

    def find_pizza
        Pizza.find(params[:id])
    end

    def pizza_params
        params.permit(:name, :price, :description)
    end

    def render_not_found_response
        render json: { error: "Pizza not found" }, status: :not_found
    end
end
