class CreateActors < ActiveRecord::Migration[4.2]

  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
# Write a migration for the actors table. An actor should have a first_name and a last_name.
# Write a migration for the characters table. A character should have a name and a show_id––a character will belong to a show.
# Associate the Actor model with the Character and Show model. An actor should have many characters and many shows through characters.
