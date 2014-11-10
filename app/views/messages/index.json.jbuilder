json.array!(@messages) do |message|
  json.extract! message, :id, :message_id, :sender_id, :receiver_id, :title, :content, :timestamp
  json.url message_url(message, format: :json)
end
