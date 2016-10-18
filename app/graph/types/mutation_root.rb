MutationRoot = GraphQL::ObjectType.define do
  name 'Mutation Root'

  field :create_trainer do
    type TrainerType
    argument :name, types.String
    argument :description, types.String
    resolve -> (obj, inputs, context) {
      Trainer.create(name: inputs["name"], description: inputs["description"])
    }
  end
end
