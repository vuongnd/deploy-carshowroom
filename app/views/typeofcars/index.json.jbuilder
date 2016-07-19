json.array!(@typeofcars) do |typeofcar|
  json.extract! typeofcar, :id, :name, :company_id
  json.url typeofcar_url(typeofcar, format: :json)
end
