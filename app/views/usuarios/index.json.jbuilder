json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id_usuario, :nombre, :clave
  json.url usuario_url(usuario, format: :json)
end
