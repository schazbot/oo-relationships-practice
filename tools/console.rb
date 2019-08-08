require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bakery1 = Bakery.new("Yummmz")
bakery2 = Bakery.new("Groggs")


cake = Dessert.new("Cake", bakery1)
crumble = Dessert.new("Apple Crumble", bakery2)
pancake = Dessert.new("Pancakes", bakery1)
waffles = Dessert.new("Waffles", bakery2)


chocolate = Ingredient.new("Chocolate", cake, 200)
flour = Ingredient.new("Flour", pancake, 20)
butter = Ingredient.new("Butter", cake, 500)
sugar = Ingredient.new("Sugar", cake, 350)
caster = Ingredient.new("Caster sugar", cake, 350)
brown_sug = Ingredient.new("Brown sugar", cake, 350)
apple = Ingredient.new("Apple", crumble, 250)
almond_milk = Ingredient.new("Almond Milk", pancake, 100)
banana = Ingredient.new("Banana", waffles, 110)





Pry.start




0
