json.array!(@card_expansions) do |card_expansion|
  json.extract! card_expansion, :id, :set_code, :card_name, :rarity, :card_num, :image
  json.url card_expansion_url(card_expansion, format: :json)
end
