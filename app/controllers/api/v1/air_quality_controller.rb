class Api::V1::AirQualityController < ApplicationController

  def index
    air_quality = AirQualityFacade.get_air_quality_data(params[:city])
    render json: AirQualitySerializer.new(air_quality)
  end

  private

end