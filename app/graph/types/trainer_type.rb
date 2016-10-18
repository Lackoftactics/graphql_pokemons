TrainerType = GraphQL::ObjectType.define do
  name "Trainer"
  description "Trainer"
  # Expose fields associated with Pokemon model
  field :id, types.Int
  field :name, types.String
  field :description, types.String
  field :number_of_pokeballs, types.Int
  field :pokemons, PokemonType.to_list_type
end
