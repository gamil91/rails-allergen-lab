class FoodsController < ApplicationController

    def show
        @food = Food.find(params[:id])
    end
    
    def new
        @food = Food.new
    end

    def create
        @food = Food.new(food_params)
        if @food.save
            redirect_to @food.recipe
        else
            render :new
        end
    end


    private

    def food_params
        params.require(:food).permit(:recipe_id, :ingredient_id, :measurement)
    end
end
