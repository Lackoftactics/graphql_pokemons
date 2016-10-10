SkillType = GraphQL::ObjectType.define do
  name "Skill"
  description "Skills owned by pokemon"
  # Expose fields associated with Pokemon model
  field :name, types.String

  #field :skills, SkillType, "Skills owned by this pokemon"
  #field :trainer, TrainerType, "Owner of this pokemon"
end
