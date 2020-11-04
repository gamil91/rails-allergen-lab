class RecipesController < ApplicationController
    before_action :get_recipe, only:[:show, :edit, :update, :destroy]

    def index
        if params[:sort]
            @recipes = Recipe.all.sort_by{|recipe|recipe.ingredients.length} 
        else
            @recipes = Recipe.all
        end
    end

    def show
    end

    def new
        @recipe = Recipe.new
    end
    
    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.valid?
            @recipe.save
            redirect_to @recipe
        else
            render :new 
        end
    end

    def edit
    end

    def update
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render :edit
        end
    end

    def destroy
        @recipe.destroy
        redirect_to recipes_path
    end

    private

    def get_recipe
        @recipe = Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:name, :meal_type, :user_id)
    end

end
