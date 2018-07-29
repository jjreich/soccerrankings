json.extract! event, :id, :eventTime, :headline, :article, :importance, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
