require 'rails_helper'

RSpec.describe 'Recipes Search API' do
  it 'exists with attributes' do
    data = {
      :id=>nil,
      :type=>"recipe",
      :attributes=> { :capital=>"Paris"}
    }
  end
end