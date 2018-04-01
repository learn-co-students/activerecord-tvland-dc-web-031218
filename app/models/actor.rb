require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # returns the first and last name of an actor
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # lists all of the characters that actor has.
    # ["Kaleesi" = "Game of Thrones"]
    output_array = []
    self.characters.each{|character| output_array << "#{character.name} - #{character.show.name}"}
    output_array
  end
end

# has associated characters in an array
# can build its associated characters
# can build its associated shows through its characters
# can list all of its shows and characters
