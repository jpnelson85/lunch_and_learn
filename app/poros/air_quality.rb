class AirQuality
  attr_reader :id,
              :type,
              :city,
              :attributes,
              :aqi,
              :pm25_concentration,
              :co_concentration

  def initialize(data)
    @id = nil
    @type = 'air_quality'
    @city = data[:city]
    @attributes = data[:attributes]
    @aqi = data[:attributes][:aqi]
    @pm25_concentration = data[:attributes][:pm25_concentration]
    @co_concentration = data[:attributes][:co_concentration]
  end
end