require 'rails_helper'

RSpec.describe LibraryService do
  it 'returns books for a given city', :vcr do
    books = LibraryService.new.city_book_search('Paris')

    expect(books).to have_key(:data)
    expect(books).to be_a(Hash)
    expect(books).to have_key(:aqi)
    expect(books).to be_a(Integer)
    expect(books).to have_key(:concentration)
    expect(books).to be_a(Float)
  end
end