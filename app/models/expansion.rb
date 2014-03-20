require 'octopus'

class Expansion < ActiveRecord::Base
    replicated_model

  has_many :card_expansions, :dependent => :destroy
  has_many :cards, :through => :card_expansions
end
