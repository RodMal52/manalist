require 'octopus'

class Expansion < ActiveRecord::Base
    replicated_model

    has_and_belongs_to_many :CardExpansions
end
