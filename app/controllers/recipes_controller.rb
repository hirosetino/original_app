class RecipesController < ApplicationController
    def index
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def recipe_params
        params.require(:recipe).permit(:image, :name, :cooking_time_id, :food, :cooking_method).merge(user_id: current_user.id)
    end
end
