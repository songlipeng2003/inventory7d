json.array!(@records) do |record|
  json.extract! record, :id, :warehouse_id, :product_id, :ios_type, :number, :act_type, :note
  json.url record_url(record, format: :json)
end
