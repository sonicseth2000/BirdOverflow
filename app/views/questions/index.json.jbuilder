json.array!(@questions) do |question|
  json.extract! question, :id, :question_id, :creator_id, :title, :content, :category, :answered, :closing_comment, :timestamp
  json.url question_url(question, format: :json)
end
