json.array!(@deck_matchups) do |deck_matchup|
  json.extract! deck_matchup, :id, :deck_id_1, :deck_id_2, :wins, :losses, :draws, :match_date, :config_id
  json.url deck_matchup_url(deck_matchup, format: :json)
end
