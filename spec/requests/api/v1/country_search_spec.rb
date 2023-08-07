require 'rails_helper'

RSpec.describe 'Country Search API' do
  it 'returns a list of countries', :vcr do
    headers = { 'CONTENT_TYPE' => 'application/json' }
    country = 'France'

    get "/api/v1/countries?country=#{country}", headers: headers

    expect(response).to be_successful
  end
end