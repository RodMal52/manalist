class Expansion < ActiveRecord::Base

  has_many :card_expansions, :dependent => :destroy
  has_many :cards, :through => :card_expansions

end
