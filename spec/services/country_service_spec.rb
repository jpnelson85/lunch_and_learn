require 'rails_helper'

RSpec.describe CountryService do
  it 'returns a list of countries', :vcr do
    countries = CountryService.new.get_countries

    countries.each do |country|
      expect(country).to have_key(:name)
      expect(country[:name]).to be_a(Hash)
      expect(country[:name]).to have_key(:common)
      expect(country[:name][:common]).to be_a(String)
    end
  end

  it 'returns a country by searching name', :vcr do
    country = CountryService.new.get_country_by_name('Brazil')

    expect(country[0]).to have_key(:name)
    expect(country[0][:name]).to be_a(Hash)
    expect(country[0][:name]).to have_key(:common)
    expect(country[0][:name][:common]).to be_a(String)
    expect(country[0][:name][:common]).to eq('Brazil')
  end

  it 'returns capital by searching country name', :vcr do
    capital = CountryService.new.get_capital_by_country_name('Brazil')

    expect(capital[0]).to have_key(:capital)
    expect(capital[0][:capital]).to be_a(Array)
  end
end