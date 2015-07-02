json.array!(@banks) do |bank|
  json.extract! bank, :id, :name, :parsers
  json.url bank_url(bank, format: :json)
end
