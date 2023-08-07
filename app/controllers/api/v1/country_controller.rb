class Api::V1::CountryController < ApplicationController

  def index
    country = CountryFacade.get_country_by_name(params[:country])
    render json: CountrySerializer.new(country)
  end

  private

end