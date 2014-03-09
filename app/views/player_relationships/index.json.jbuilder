json.array!(@player_relationships) do |player_relationship|
  json.extract! player_relationship, :id, :username_1, :username_2, :relationship_type
  json.url player_relationship_url(player_relationship, format: :json)
end
