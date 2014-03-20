class CardExpansion < ActiveRecord::Base

    has_one :Card
    has_one :Expansion
end
