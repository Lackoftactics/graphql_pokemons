MutationRoot = GraphQL::ObjectType.define do
  name "MutationRoot"
  description "mutate your data root"

  field :create_trainer do
    type TrainerType
    description "Create new trainer"
    argument :name, types.String
    argument :description, types.String
    resolve -> (obj, inputs, context) {
      Trainer.create(name: inputs["name"], description: inputs["description"])
    }
  end
end
