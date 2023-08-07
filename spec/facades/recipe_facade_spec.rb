require 'rails_helper'

RSpec.describe "Recipe Facade" do
  describe "class methods" do
    it "returns recipes by country search", :vcr do
      recipes = RecipeFacade.new.get_recipes("Brazil")

      expect(recipes).to be_an(Array)
      expect(recipes[0]).to be_a(Recipe)
      expect(recipes[0].title).to be_a(String)
      expect(recipes[0].image).to be_a(String)
      expect(recipes[0].url).to be_a(String)
      expect(recipes[0].country).to be_a(String)
      expect(recipes[0].country).to eq("Brazil")
    end

    it 'returns empty array if no recipes for country', :vcr do
      recipes = RecipeFacade.new.get_recipes("asdf")

      expect(recipes).to eq([])
    end
  end
end