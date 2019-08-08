class Ingredient
  @@ingredients = []

  attr_accessor :name, :dessert, :calories

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    @@ingredients << self
  end

  def self.all
    @@ingredients
  end

  def self.find_all_by_name(ingredient)
    # should take a string argument return an array of all ingredients that include that string in their name
    Ingredient.all.select{|ing| ing.name.downcase.include?(ingredient)}
  end


  def bakery
    # should return the bakery object for the bakery that uses that ingredient
    Bakery.all.select{|bakery| bakery.ingredients.include?(self)}
  end
end
