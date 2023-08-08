require "rails_helper"

RSpec.describe "Recipes Search API" do
  it 'returns recipes by country search', :vcr do
    headers = { 'CONTENT_TYPE' => 'application/json' }
    country = 'Brazil'

    get "/api/v1/recipes?country=#{country}", headers: headers

    expect(response).to be_successful
  end

end