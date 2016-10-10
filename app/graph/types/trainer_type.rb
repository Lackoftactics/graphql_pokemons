TrainerType = GraphQL::ObjectType.define do
  name "Trainer"
  description "Trainer"
  # Expose fields associated with Pokemon model
  field :name, types.String
end
