# character should have a name and a show_id––a character will belong to a show.
class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
