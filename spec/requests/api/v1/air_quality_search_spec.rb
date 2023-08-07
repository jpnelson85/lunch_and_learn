require 'rails_helper'

RSpec.describe 'Air Quality Search API' do
  it 'returns air quality data for a given city', :vcr do
    headers = { 'CONTENT_TYPE' => 'application/json' }
    country = "France"

    get "/api/v1/air_quality?country=#{country}", headers: headers

    expect(response).to be_successful
  end
end