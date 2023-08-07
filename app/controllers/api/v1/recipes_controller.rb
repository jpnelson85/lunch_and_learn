class Api::V1::RecipesController < ApplicationController

  def index
    country = CountryFacade.get_country_by_name(params[:country])
    recipes = RecipeFacade.new.get_recipes(country)
    render json: RecipeSerializer.new(recipes)
  end

  private

end
