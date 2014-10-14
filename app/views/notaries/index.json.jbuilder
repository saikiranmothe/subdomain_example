json.array!(@notaries) do |notary|
  json.extract! notary, :id, :name, :info
  json.url notary_url(notary, format: :json)
end
