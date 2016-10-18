class AddDescFieldsToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :description, :text
    add_column :trainers, :number_of_pokeballs, :integer
  end
end
