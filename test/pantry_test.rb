require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'
require './lib/ingredient'

class PantryTest < Minitest::Test

  def setup
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50
      })
    @ingredient2 = Ingredient.new({
      name: "Macaroni",
      unit: "oz",
      calories: 200
      })
  end

  def test_it_exists
    assert_instance_of Pantry, @pantry
  end

  def test_pantry_is_empty_to_start
    assert_equal ({}), @pantry.stock
  end

  def test_pantry_stock_check_is_0_to_start
    assert_equal 0, @pantry.stock_check(@ingredient1)
  end

  def test_it_can_restock_ingredients
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)

    assert_equal 15, @pantry.stock_check(@ingredient1)

    @pantry.restock(@ingredient2, 7)

    assert_equal 7, @pantry.stock_check(@ingredient2)
  end



end
