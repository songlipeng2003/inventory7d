json.array!(@records) do |record|
  json.extract! record, :id, :warehouse_id, :product_id, :io_type, :number, :act_type, :note
  json.url record_url(record, format: :json)
end
