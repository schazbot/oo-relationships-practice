class Bakery
  attr_reader :name

  @@bakeries = []

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
    # should return an array of ingredients for the bakery's dessert
    desserts.map{|dessert| dessert.ingredients}.flatten
  end


  def average_calories
    # should return a number totaling the average number of calories for the desserts sold at this bakery
    ingredients.map{|ing| ing.calories}.sum / desserts.length
     
  end

  def shopping_list
    # should return a string of names for ingredients for the bakery

    ingredients.map{|ing| ing.name}.join(", ")
  end
end
