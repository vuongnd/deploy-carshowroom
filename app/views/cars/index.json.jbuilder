json.array!(@cars) do |car|
  json.extract! car, :id, :name, :year, :madein, :color, :max_speed, :fuel_consumption, :engine_capacity, :acceleration, :wheel_size, :braking_system, :safety_system, :typeofcar_id
  json.url car_url(car, format: :json)
end
