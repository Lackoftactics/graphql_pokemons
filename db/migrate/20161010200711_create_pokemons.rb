class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :location
      t.integer :level

      t.timestamps null: false
    end
  end
end
