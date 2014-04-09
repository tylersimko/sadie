json.array!(@snacks) do |snack|
  json.extract! snack, :id, :description
  json.url snack_url(snack, format: :json)
end
