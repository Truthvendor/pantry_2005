class Ingredient
  attr_reader :name,
              :unit,
              :calories

  def initialize(attribute)
    @name = attribute[:name]
    @unit = attribute[:unit]
    @calories = attribute[:calories]
  end





end
