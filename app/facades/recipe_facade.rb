class RecipeFacade
  
  def get_recipes(country_name)
    recipes = RecipeService.new.get_recipes(country_name)
    if recipes[:hits].empty?
      []
    else
      recipes[:hits].map do |recipe|
        Recipe.new(recipe, country_name)
      end
    end
  end
end