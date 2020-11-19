require 'json'
require 'open-uri'

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_list = open(url).read
ingredients = JSON.parse(ingredients_list)

ingredients['drinks'].each do |value|
	puts value['strIngredient1']
	Ingredient.create!(name: value['strIngredient1'])
end