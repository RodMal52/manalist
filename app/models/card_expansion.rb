require 'octopus'

class CardExpansion < ActiveRecord::Base
    replicated_model

    has_one :Card
    has_one :Expansion
end
