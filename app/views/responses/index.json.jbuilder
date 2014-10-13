json.array!(@responses) do |response|
  json.extract! response, :id, :response_id, :q_response_id, :r_response_id, :creator_id, :response_score, :content, :timestamp
  json.url response_url(response, format: :json)
end
