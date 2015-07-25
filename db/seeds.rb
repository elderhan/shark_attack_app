# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating Sharks"

Shark.delete_all

Shark.create! name: "Mama Maria", shark_species: "Tiger Shark", weight: 4000, age: 12, description: "A motherly shark that eats her victims with love"

Shark.create! name: "Ronaldo", shark_species: "Whale Shark", weight: 500, age: 92, description: "Still accidentally attacks things even though he is on an all-plankton diet"

Shark.create! name: "Derica", shark_species: "Great White Shark", weight: 80, age: 66, description: "Derica is awesome"

Shark.create! name: "Brian", shark_species: "Megladon", weight: 4900, age: 95, description: "The king of the ocean *cue lion king music but about sharks*"





