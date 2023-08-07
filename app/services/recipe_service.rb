class RecipeService
  def conn 
    Faraday.new(url: 'https://api.edamam.com') do |f|
      f.headers['Content-Type'] = 'application/json'
      f.params['type'] = 'public'
      f.params['app_id'] = ENV['EDA_ID']
      f.params['app_key'] = ENV['EDA_KEY']
    end
  end

  def get_recipes(country_name)
    response = conn.get("api/recipes/v2?q=#{country_name}")
    JSON.parse(response.body, symbolize_names: true)
  end
end