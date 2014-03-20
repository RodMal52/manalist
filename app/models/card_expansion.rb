require 'octopus'
require 'composite_primary_keys'

class CardExpansion < ActiveRecord::Base
    self.primary_keys = [:card_id, :expansion_id]
    replicated_model

   belongs_to :card, :foreign_key => [:card_id, :expansion_id]
   belongs_to :expansion
end
