PokemonType = GraphQL::ObjectType.define do
  name "Pokemon"
  description "A single pokemon with trainer, skills, location, name"
  # Expose fields associated with Pokemon model
  field :id, types.ID, "This id of this pokemon"
  field :name, types.String, "The name of this pokemon"
  field :level, types.Int, 'Level of pokemon'
  field :location, types.String, "Location of pokemon"

  #field :skills, SkillType, "Skills owned by this pokemon"
  #field :trainer, TrainerType, "Owner of this pokemon"
end
