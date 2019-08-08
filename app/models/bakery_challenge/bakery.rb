class Bakery

  @@bakeries = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@bakeries << self
  end
  
  def self.all
    @@bakeries
  end
  
  def desserts
    # should return an array of desserts the bakery makes
    Dessert.all.select{|dessert| dessert.bakery == self}
  end

  def ingredients
    # should return an array of ingredients for the bakery's
    # desserts
    desserts.map{|dessert| dessert.ingredients.map{|ing| ing}}.flatten
  end


  def average_calories
    # should return a number totaling the average number of calories for the desserts sold at this bakery
    calories_arr = ingredients.map{|ing| ing.calories}
    calories_arr.sum / calories_arr.length
  end


  def shopping_list
    # should return a string of names for ingredients for the bakery
    ingredients.map{|ing| ing.name}.join(", ")
  end
end
