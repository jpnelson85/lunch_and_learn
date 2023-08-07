class AirQualityService

  def conn 
    Faraday.new(url: 'https://api.api-ninjas.com/') do |f|
      f.headers['Content-Type'] = 'application/json'
      f.headers['X-Api-Key'] = ENV['X-API-KEY']
    end
  end

  def get_air_quality_data(city_name)
    response = conn.get("v1/airquality?city=#{city_name}")
    JSON.parse(response.body, symbolize_names: true)
  end
end