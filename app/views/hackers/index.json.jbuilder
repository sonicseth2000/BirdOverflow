json.array!(@hackers) do |hacker|
  json.extract! hacker, :id, :username, :password, :first_name, :last_name, :score, :type
  json.url hacker_url(hacker, format: :json)
end
