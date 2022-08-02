require './lib/recipe'
require './lib/ingredient'
require './lib/cook_book'

RSpec.describe CookBook do

  let(:cookbook) { CookBook.new}
  let(:recipe1) { Recipe.new("Mac and Cheese") }
  let(:recipe2) { Recipe.new("Cheese Burger") }

  it 'exists' do
    expect(cookbook).to be_a(CookBook)
  end

  it 'can have recipes' do

    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)

    expect(cookbook.recipes).to eq([recipe1, recipe2])
  end
end
