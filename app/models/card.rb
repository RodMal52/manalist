require 'octopus'

class Card < ActiveRecord::Base
   replicated_model

   has_and_belongs_to_many :CardExpansions
end
