# Learning Goals
#
# Practice writing instance methods
# Implement class methods to check inputs
# Clarify by practical application the difference
# =>  between instance and class methods

#YOUR CODE GOES HERE
class Ingredient
# need attr_accessor
  attr_accessor :quantity, :unit, :name
# initialize(quantity, unit, name)
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    puts "#{@quantity} #{@unit} #{@name}"
  end

  def safe?
    safe_foods = [
      "brussels sprouts",
      "spinach",
      "eggs",
      "milk",
      "tofu",
      "seitan",
      "bell peppers",
      "quinoa",
      "kale",
      "chocolate",
      "beer",
      "wine",
      "whiskey"
    ]
    safe_foods.include? @name.downcase
  end

  def self.parse(full_ingredient)
    ing= full_ingredient.split(" ")
    new(ing[0], ing[1], ing[2])
  end
end

# write a recipe class
class Recipe
  attr_accessor :ingredient_array, :instruction_array, :name

  def initialize(name, instruction_array, ingredient_array)
    @name = name
    @instructions = instruction_array
    @ingredients = ingredient_array
  end

  def recipe_summary
    puts "Name: #{@name}"
    puts
    puts "Ingredients:"
    @ingredients.each do |item|
      puts item.summary
    end
    puts
    puts "Instructions:"
    num = 0
    @instructions.each do |step|
      puts "#{num += 1}. #{step}"
    end
  end

  def is_safe?
    @ingredients.each do |item|
      if !item.safe?
        return false
      end
    end
    true
  end
end

# mac_cheese = Recipe.new("Mac & Cheese",
#   instruction = [
#     "Preheat oven to 375",
#     "Cook noodles",
#     "Add in shredded chesse, butter, and milk",
#     "Bake mixture in oven for 30 minutes"
#   ],
#   ingredient = [
#     Ingredient.new(2.5, "lb(s)", "Cheese"),
#     Ingredient.new(1, "box", "Macaroni Noodles"),
#     Ingredient.new(2, "sticks", "Butter"),
#     Ingredient.new(1, "cup", "Whole Milk")
#   ]
# )

puts "********"

name_1 = "Spinach Omlette"
ingredients_1 = [
        Ingredient.new(5.0, "whole", "eggs"),
        Ingredient.new(1.0, "cup", "spinach"),
        Ingredient.new(1.5, "cup", "milk")
      ]
instructions_1 = [
        "Whisk egg, milk, onions, and spinach together.",
        "Pour into medium heat pan.",
        "Cook for about 5 minutes, flipping only once."
      ]
recipe_1 = Recipe.new(name_1, instructions_1, ingredients_1)
puts "Is #{recipe_1.name} safe? #{recipe_1.is_safe?}"

puts "********"
name_2 = "Polenta with Roasted Bell Peppers"
ingredients_2 = [
        Ingredient.new(3.0, "cup", "Cooked Polenta"),
        Ingredient.new(2.0, "whole", "Bell Peppers"),
        Ingredient.new(4.0, "clove", "Garlic")
      ]
instructions_2 = [
        "Roast Garlic in the oven for 20 minutes at 375 F.",
        "Heat up cooked polenta on medium-low heat. You can add oil if needed.",
        "Once garlix has roasted, cool for 10 minutes.
        Peel cloves from shell and slice thickly.",
        "Add roasted garlic to polenta.",
        "Simmer for 5 minutes and serve hot!"
      ]
recipe_2 = Recipe.new(name_2, instructions_2, ingredients_2)
puts "Is #{recipe_2.name} safe? #{recipe_2.is_safe?}"

puts "********"
name_3 = "Kale chips"
ingredients_3 = [ Ingredient.new(1.0, "bag", "Kale") ]
instructions_3 = [
        "Place Kale on baking sheet.",
        "Bake for 30 minutes at 400 F in oven."
      ]
recipe_3 = Recipe.new(name_3, instructions_3, ingredients_3)
puts "Is #{recipe_3.name} safe? #{recipe_3.is_safe?}"
