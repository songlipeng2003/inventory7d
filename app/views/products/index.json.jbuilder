json.array!(@products) do |product|
  json.extract! product, :id, :sn, :name, :description
  json.url product_url(product, format: :json)
end
