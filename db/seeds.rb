require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
read = open(url).read
json = JSON.parse(read)

json["drinks"].each do |ingredient|
    Ingredient.create(name: "#{ingredient['strIngredient1']}")
    puts "Se creo #{ingredient['strIngredient1']}"
  end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "Applejack")
# Ingredient.create(name: "Sprite")
# Ingredient.create(name: "Jack Daniels")
# Ingredient.create(name: "Water")
# Ingredient.create(name: "Irish cream")
