json.array!(@deck_sides) do |deck_side|
  json.extract! deck_side, :id, :deck_id, :side_id
  json.url deck_side_url(deck_side, format: :json)
end
