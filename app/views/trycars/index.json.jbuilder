json.array!(@trycars) do |trycar|
  json.extract! trycar, :id, :name, :old, :address, :phone, :driver_license, :car_id, :fee_trial
  json.url trycar_url(trycar, format: :json)
end
