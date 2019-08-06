class Dessert
  attr_accessor :name, :bakery_name, :ingredient1, :ingredient2, :ingredient3

  @@all = []

  def initialize(name, bakery_name, ingredient1, ingredient2, ingredient3)
    @name = name
    @bakery_name = bakery_name
    @ingredient1 = ingredient1
    @ingredient2 = ingredient2
    @ingredient3 = ingredient3
    @@all << self
  end

  def ingredients
    ingredients_array = []
    ingredients_array << self.ingredient1.name
    ingredients_array << self.ingredient2.name
    ingredients_array << self.ingredient3.name
    ingredients_array
  end

  def bakery
    Bakery.all.select { |bakery| bakery.name == self.bakery_name.name }
  end

  def calories
    calories_array = []
    self.ingredients.each { |ingredient| calories_array << ingredient.calorie_count.to_i }
    calories_array.sum
  end

  def self.all
    @@all
  end
end
