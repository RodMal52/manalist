json.array!(@side_cards) do |side_card|
  json.extract! side_card, :id, :side_id, :card_name, :quantity
  json.url side_card_url(side_card, format: :json)
end
