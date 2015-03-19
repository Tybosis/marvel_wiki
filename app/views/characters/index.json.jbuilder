json.array!(@characters) do |character|
  json.extract! character, :id, :name, :realname, :history, :powers
  json.url character_url(character, format: :json)
end
