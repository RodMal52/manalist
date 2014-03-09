json.array!(@deck_cards) do |deck_card|
  json.extract! deck_card, :id, :card_name, :deck_id, :quantity
  json.url deck_card_url(deck_card, format: :json)
end
