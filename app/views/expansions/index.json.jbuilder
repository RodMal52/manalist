json.array!(@expansions) do |expansion|
  json.extract! expansion, :id, :set_code, :name, :symbol, :size, :common_cards_num, :uncommon_cards_num, :rare_cards_num, :mythic_cards_num, :other_cards_num
  json.url expansion_url(expansion, format: :json)
end
