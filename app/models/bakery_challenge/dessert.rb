class Dessert
  @@all = []
  #   a dessert belongs to a bakery
  attr_accessor :bakery, :name

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def ingredients
    #   should return an array of ingredients for the dessert
    Ingredient.all.select { |ingredient| ingredient.dessert == self }
  end

  def calories
    # should return a number totaling all the calories for all the ingredients included in that dessert
    ingredients.collect{|ingredient| ingredient.calories}.sum
  end

  def self.all
    @@all
  end
end
