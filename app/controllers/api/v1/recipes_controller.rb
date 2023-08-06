class Api::V1::RecipesController < ApplicationController

  def index
    country = params[:country]
    country ||= fetch_random_country_name if country.blank?

    recipes = fetch_recipes(country)

    render json: { data: recipes }
  end

  private

end
