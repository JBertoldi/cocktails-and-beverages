# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning db..'

Ingredient.destroy_all
Cocktail.destroy_all

puts 'Creating db..'

response = RestClient.get(url)
json = JSON.parse(response, symbolize_names: true)

# {
#   drinks: [
#     {ingr: 'lemon'}
#   ]
# }

json[:drinks].each do |drink|
    name = drink[:ingr]

    puts name
    Ingredient.create!(name: drink[:ingr])
end

puts 'Done! :D'