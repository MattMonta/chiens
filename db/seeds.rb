# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  dog = Dog.create!(name: Faker::Creature::Animal.name, citie_id: City.all.ids.sample)
end

5.times do
  dogsitter = Dogsitter.create!(name: Faker::Games::Overwatch.hero, citie_id: City.all.ids.sample)
end

5.times do
  strolls = Stroll.create!(date: Faker::Date.forward(23), dog_id: Dog.all.ids.sample, dogsitter_id: Dogsitter.all.ids.sample)
end

5.times do
  city = City.create!(name: Faker::Address.city, dog_id: Dog.all.ids.sample, dogsitter_id: Dogsitter.all.ids.sample)
end


