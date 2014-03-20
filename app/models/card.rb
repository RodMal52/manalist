require 'octopus'

class Card < ActiveRecord::Base
   replicated_model
 has_many :card_expansions, :class_name => 'CardExpansion', :foreign_key => [:card_id, :expansion_id], :dependent => :destroy
    
   has_one :expansion, :through => :card_expansions
   accepts_nested_attributes_for :card_expansions
end
