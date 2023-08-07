require 'rails_helper'

RSpec.describe AirQualityService do
  it 'returns air quality data for a given city', :vcr do
    air_quality_data = AirQualityService.new.get_air_quality_data('Denver')

    expect(air_quality_data).to have_key(:CO)
    expect(air_quality_data[:CO]).to be_a(Hash)
    expect(air_quality_data[:CO]).to have_key(:aqi)
    expect(air_quality_data[:CO][:aqi]).to be_a(Integer)
    expect(air_quality_data[:CO]).to have_key(:concentration)
    expect(air_quality_data[:CO][:concentration]).to be_a(Float)
  end
end