json.extract! player, :id, :firstName, :gender, :dob, :created_at, :updated_at
json.url player_url(player, format: :json)
