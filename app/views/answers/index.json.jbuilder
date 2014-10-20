json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer_id, :q_response_id, :creator_id, :response_score, :content, :timestamp
  json.url answer_url(answer, format: :json)
end
