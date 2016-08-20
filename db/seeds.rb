100.times do
  superhero_name = Faker::Superhero.name #=> "Magnificent Shatterstar"
  superhero_power = Faker::Superhero.power #=> "Photokinesis"

Superhero.create(
  superhero_name: superhero_name,
  superhero_power: superhero_power
)
end
