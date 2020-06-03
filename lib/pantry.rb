class Pantry
  attr_reader :stock,
              :stock_check

def initialize
  @stock = {}
  @stock_check = 0
end

def restock(ingredient, amount)
  stock[ingredient] = amount
  # require "pry"; binding.pry
end


def stock_check(ingredient)
  @stock.each do |ingredient|
    ingredient.amount
  require "pry"; binding.pry
end
end


end
