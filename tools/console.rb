require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bakery1 = Bakery.new("Yummmz")
bakery2 = Bakery.new("Groggs")



chocolate = Ingredient.new("Chocolate", "200")
flour = Ingredient.new("Flour", "20")
butter = Ingredient.new("Butter", "500")
sugar = Ingredient.new("Sugar", "350")
apple = Ingredient.new("Apple", "250")
almond_milk = Ingredient.new("Almond Milk", "100")
banana = Ingredient.new("Banana", "110")



cake = Dessert.new("Cake", bakery1, flour, chocolate, sugar)
crumble = Dessert.new("Apple Crumble", bakery2, flour, apple, sugar)
waffles = Dessert.new("Pancakes", bakery1, flour, almond_milk, banana)

Pry.start




0
