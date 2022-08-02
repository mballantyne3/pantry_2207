class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe_name)
    @recipes << recipe_name
  end
end
