class Ingredient
  attr_reader :name, :unit, :calories

  def initialize(contents)
    @name = contents[:name]
    @unit = contents[:unit]
    @calories = contents[:calories]
  end

end
