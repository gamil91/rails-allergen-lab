class IngredientsController < ApplicationController

   def index
    @ingredients = Ingredient.all.sort_by {|i| i.users.length}.reverse
   end

   def show
    @ingredient = Ingredient.find(params[:id])
   end

   def new
    @ingredient = Ingredient.new
   end

   def create
    @ingredient = Ingredient.new(params.require(:ingredient).permit(:name))
        if @ingredient.valid?
            @ingredient.save
            redirect_to ingredients_path
        else
            render :new
        end
    end

end
