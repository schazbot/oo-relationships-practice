class Bakery
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    # should return an array of ingredients for the bakery's desse = desserts.select { |dessert| dessert.ingredients }
    desserts.map {|dessert| dessert.ingredients.map{|ing| ing.name}}.flatten
  
  end

  def desserts
    # should return an array of desserts the bakery makes
    Dessert.all.select { |dessert| dessert.bakery == self }
  end

  def average_calories
    # should return a number totaling the average number of calories for the desserts sold at this bakery
    cals_array = desserts.map{|dessert| dessert.calories}
    cals_array.sum/cals_array.length

  end

  def shopping_list
    ingredients.join(", ")
  end

  def self.all
    @@all
  end
end
