require 'rails_helper'

RSpec.describe CountryService do
  it 'returns a list of countries', :vcr do
    countries = CountryService.get_countries

    countries.each do |country|
      expect(country).to have_key(:name)
      expect(country[:name]).to be_a(Hash)
      expect(country[:name]).to have_key(:common)
      expect(country[:name][:common]).to be_a(String)
    end
  end

  it 'returns a country by searching name', :vcr do
    country = CountryService.get_country_by_name('Brazil')

    expect(country).to have_key(:name)
    expect(country[:name]).to be_a(Hash)
    expect(country[:name]).to have_key(:common)
    expect(country[:name][:common]).to be_a(String)
    expect(country[:name][:common]).to eq('Brazil')
  end
end