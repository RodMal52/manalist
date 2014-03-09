json.array!(@decks) do |deck|
  json.extract! deck, :id, :deck_id, :username, :name, :format, :type, :colors, :rating, :creation_date, :last_update
  json.url deck_url(deck, format: :json)
end
