require 'rails_helper'

RSpec.describe RecipeService do
  it 'returns a list of recipes', :vcr do
    recipes = RecipeService.get_recipes('Brazil')

    expect(recipes).to have_key(:hits)
    expect(recipes[:hits]).to be_an(Array)
    expect(recipes[:hits][0]).to have_key(:recipe)
    expect(recipes[:hits][0][:recipe]).to have_key(:label)
    expect(recipes[:hits][0][:recipe][:label]).to be_a(String)
    expect(recipes[:hits][0][:recipe]).to have_key(:image)
    expect(recipes[:hits][0][:recipe][:image]).to be_a(String)
    expect(recipes[:hits][0][:recipe]).to have_key(:url)
    expect(recipes[:hits][0][:recipe][:url]).to be_a(String)
  end
end