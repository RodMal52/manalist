json.array!(@side_boards) do |side_board|
  json.extract! side_board, :id, :side_id
  json.url side_board_url(side_board, format: :json)
end
