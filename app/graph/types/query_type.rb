QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema. See available queries."

  # Get Pokemons by name
  field :pokemons do
    type PokemonType.to_list_type
    argument :name, !types.String
    argument :trainer_name, types.String
    description 'Root object to get viewer related collections'
    resolve -> (obj, args, ctx) {
      PokemonFilter.new(args).scoped
    }
  end

  field :pokemon do
    type PokemonType
    argument :id, !types.ID
    description 'Find pokemon by ID'
    resolve -> (obj, args, ctx) {
      Pokemon.find(args['id'])
    }
  end
end
