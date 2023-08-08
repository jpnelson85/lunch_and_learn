require 'rails_helper'

RSpec.describe "Library Facade" do
  describe "class methods" do
    it "returns recipes by country search", :vcr do
      books = LibraryFacade.new.get_books("Brazil")

      expect(books).to be_an(Array)
      expect(books[0]).to be_a(Recipe)
      expect(books[0].title).to be_a(String)
      expect(books[0].image).to be_a(String)
      expect(books[0].url).to be_a(String)
      expect(books[0].country).to be_a(String)
      expect(books[0].country).to eq("Brazil")
    end
  end
end