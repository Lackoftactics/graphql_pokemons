class CreatePokemonSkills < ActiveRecord::Migration
  def change
    create_table :pokemon_skills do |t|
      t.integer :pokemon_id
      t.integer :skill_id
    end
    add_index :pokemon_skills, :pokemon_id
    add_index :pokemon_skills, :skill_id
  end
end
