json.array!(@oferta) do |ofertum|
  json.extract! ofertum, :id, :titulo, :descripcion, :precio, :forma_pago, :extension, :usuario_id, :categorium_id
  json.url ofertum_url(ofertum, format: :json)
end
