class AirQualityFacade
  
  def get_air_quality_data(city)
    air_quality_data = AirQualityService.new.get_air_quality_data(city)
    AirQuality.new(air_quality_data)
  end
end