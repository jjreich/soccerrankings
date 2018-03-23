json.extract! game, :id, :dateTime, :location, :fieldType, :fieldConditions, :weather, :temperature, :created_at, :updated_at
json.url game_url(game, format: :json)
