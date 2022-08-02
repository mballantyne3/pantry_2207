require './lib/pantry'
require './lib/ingredient'

RSpec.describe Pantry do

  let(:pantry) { Pantry.new }
  let(:ingredient1) { Ingredient.new({name: "Cheese", unit: "oz", calories: 50}) }
  let(:ingredient2) { Ingredient.new({name: "Macaroni", unit: "oz", calories: 200}) }

  it 'exists' do
    expect(pantry).to be_a(Pantry)
  end

  it 'can stock ingredients' do
    expect(pantry.stock).to eq({})
  end

  it 'can display stock count of ingredients' do
    expect(pantry.stock_check(ingredient1)).to eq(0)
  end

  it 'can restock ingredients' do

    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)

    expect(pantry.stock_check(ingredient1)).to eq(15)

    pantry.restock(ingredient2, 7)

    expect(pantry.stock_check(ingredient2)).to eq(7)
  end
end
