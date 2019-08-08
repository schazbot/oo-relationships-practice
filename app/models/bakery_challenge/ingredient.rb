class Ingredient
  @@all = []

  attr_accessor :name, :dessert, :calories

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    @@all << self
  end

  def bakeries
    # should return the bakery object for the bakery that uses that ingredient
    Bakery.all.select{|bakery| bakery.ingredients.include(self)}
  end

  def find_all_by_name(ingredient)
    # should take a string argument return an array of all ingredients that include that string in their name
  end

  def self.all
    @@all
  end
end
