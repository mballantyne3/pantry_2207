class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount_required)
    @ingredients_required[ingredient] += amount_required
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    calorie_count = 0
    @ingredients_required.each do |ingredient, amount|
      calorie_count += ingredient.calories * amount
    end
    calorie_count
  end

end
