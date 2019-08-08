class Dessert
  @@desserts = []

  attr_accessor :bakery, :name

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@desserts << self
  end

  def self.all
    @@desserts
  end
  
  def ingredients
    # should return an array of ingredients for the dessert
    Ingredient.all.select{|ing| ing.dessert == self}
  end

  def calories
    # should return a number totaling all the calories for all the ingredients included in that dessert
    ingredients.map{|ing| ing.calories}.sum
  end

end
