class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

def say_that_thing_you_say
"#{self.name} always says: #{self.catchphrase}"
end

def build_show(showname)
newshow = Show.new(name: showname.values[0])
self.show = newshow
end



end
# Define a method in the Character class, #say_that_thing_you_say, using a given character's catchphrase.
