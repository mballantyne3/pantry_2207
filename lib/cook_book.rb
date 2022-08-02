class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe_name)
    @recipes << recipe_name
  end

  def ingredients
    @recipes.flat_map do |recipe|
      ingredients = recipe.ingredients_required.keys
      ingredients.map do |ingredient|
        ingredient.name
      end
    end.uniq
  end

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end


end
