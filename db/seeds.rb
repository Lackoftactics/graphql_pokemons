# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pokemon.destroy_all
Trainer.destroy_all
Skill.destroy_all
PokemonSkill.destroy_all

pikachu = Pokemon.create(name: 'Pikachu', location: Faker::Pokemon.location, level: 100)
ActiveRecord::Base.transaction do
  1000.times do
    Pokemon.create(name: Faker::Pokemon.name, location: Faker::Pokemon.location, level: Random.rand(1..100))
  end
end

ash = Trainer.create(name: 'Ash Ketchum', number_of_pokeballs: 0, description: 'I have my own tv series so I must be good')
ash.pokemons << pikachu

misty = Trainer.create(name: 'Misty')
brock = Trainer.create(name: 'Brock')

ActiveRecord::Base.transaction do
  10.times do
    Trainer.create(name: Faker::Name.name)
  end
end

100.times do
  Skill.create(name: Faker::Superhero.power)
end

thunder_bolt = Skill.create(name: 'thunder_bolt')
lightning = Skill.create(name: 'Lightning')
PokemonSkill.create(pokemon: pikachu ,skill: lightning)
PokemonSkill.create(pokemon: pikachu, skill: thunder_bolt)


pokemons = Pokemon.order('random()').limit(100).to_a
Skill.find_each do |skill|
  pokemon = pokemons.pop
  PokemonSkill.create(skill: skill, pokemon: pokemon)
end
