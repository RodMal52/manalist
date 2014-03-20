class Card < ActiveRecord::Base

 has_many :card_expansions, :class_name => 'CardExpansion', :foreign_key => [:card_id, :expansion_id], :dependent => :destroy
    
   has_one :expansion, :through => :card_expansions
   accepts_nested_attributes_for :card_expansions


    has_and_belongs_to_many :CardExpansions

end
