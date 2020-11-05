puts 'Cleaning db..'

Ingredient.destroy_all
Cocktail.destroy_all

puts 'Creating db..'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = RestClient.get(url)
json = JSON.parse(response, symbolize_names: true)

json[:drinks].each do |drink|
    Ingredient.create!(name: drink[:strIngredient1])
end

puts 'Done! :D'
