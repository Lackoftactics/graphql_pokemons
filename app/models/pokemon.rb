class Pokemon < ActiveRecord::Base
  has_many :pokemon_skills
  has_many :skills, through: :pokemon_skills
  belongs_to :trainer
end
