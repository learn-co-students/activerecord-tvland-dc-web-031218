class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network


  # def build_network(call_letters: whatnetwork)
  # self.network.call_letters = whatnetwork
  # end

end
