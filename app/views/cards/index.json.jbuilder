json.array!(@cards) do |card|
  json.extract! card, :id, :cardname, :manacost, :color, :power, :toughness, :loyalty_counter, :card_type
  json.url card_url(card, format: :json)
end
