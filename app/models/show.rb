class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(args)
    new_network = Network.new
    new_network.call_letters = args[:call_letters]
    # self.network = new_network
    new_network.shows << self
    new_network.save
    new_network
  end
end
