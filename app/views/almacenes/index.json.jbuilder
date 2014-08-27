json.array!(@almacenes) do |almacene|
  json.extract! almacene, :id, :IdAlmacen, :Nombre, :TipoAlmacen
  json.url almacene_url(almacene, format: :json)
end
