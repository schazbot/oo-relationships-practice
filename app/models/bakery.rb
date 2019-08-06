class Bakery
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    ingredients_array = []
    desserts
    desserts.each do |dessert|
      ingredients_array.concat(dessert.ingredients)
    end
    ingredients_array
  end

  def desserts
    Dessert.all.select { |dessert| dessert.bakery_name == self }
  end

  def average_calories
    calories_arr = []
    desserts.each { |dessert| calories_arr << dessert.calories }
    average_cals = (calories_arr.sum) / (calories_arr.length)
    average_cals
  end

  def shopping_list
    list = [] 
    ingredients.join(",")
  end

  def self.all
    @@all
  end
end
