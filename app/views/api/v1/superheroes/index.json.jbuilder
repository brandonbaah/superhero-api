json.array! @superheroes.each do |superhero|
  json.id superhero.id
  json.superhero_name superhero.superhero_name
  json.superhero_power superhero.superhero_power
end
