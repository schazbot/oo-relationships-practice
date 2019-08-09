class Dessert
  attr_reader :name, :bakery
  @@desserts = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@desserts << self
  end

  def self.all
    @@desserts
  end

  def ingredients
    # - should return an array of ingredients for the dessert
    Ingredient.all.select{|ing| ing.dessert == self}
  end

  def calories
    # - should return a number totaling all the calories for all the ingredients included in that dessert
  end
end
