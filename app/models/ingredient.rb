class Ingredient
  attr_accessor :name, :calorie_count

  @@all = []

  def initialize(name, calorie_count)
    @name = name
    @calorie_count = calorie_count
    @@all << self
  end

  
  def dessert
    Dessert.all.select do |dessert|
        dessert.ingredients.each do |ing|
            ing.name.include?(self.to_s)
        end
    end
end

def bakeries
    bakeries = []
    self.dessert.each do |pudding|
        bakeries << pudding.bakery_name
    end
    bakeries.uniq
end

def self.find_all_by_name(ingredient)
end

def self.all
  @@all
end
end
