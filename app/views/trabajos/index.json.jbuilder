json.array!(@trabajos) do |trabajo|
  json.extract! trabajo, :usuario, :tipo, :fecha, :hora
  json.url trabajo_url(trabajo, format: :json)
end
