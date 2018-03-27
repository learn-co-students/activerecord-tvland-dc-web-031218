class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  #returns the first and last name of an actor.
  "#{self.first_name} #{self.last_name}"
  end

  def list_roles
  #binding.pry
  #lists all of the characters that actor has.
  self.characters.collect {|c| "#{c.name} - #{c.show.name}"}
  end
end
