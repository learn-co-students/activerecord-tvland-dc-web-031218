class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    # "#{urkel.name} always says: #{urkel.catchphrase}"
    "#{self.name} always says: #{self.catchphrase}"
  end

  # can chain-build associations to which it belongs
  def build_show(args)
    new_show = Show.new
    new_show.name = args[:name]
    new_show.characters << self
    new_show.save
    new_show
  end

end
