require 'rails_helper'

RSpec.describe CountryFacade do
  describe 'get_country_by_name' do
    it 'returns a country name', :vcr do
      country = CountryFacade.get_country_by_name('Brazil')

      expect(country).to be_a(String)
      expect(country).to eq('Brazil')
    end
  end
    it 'returns a random country name if no name is given', :vcr do
      country = CountryFacade.get_country_by_name(nil)

      expect(country).to be_a(String)
      expect(country).to_not be_empty
    end
end