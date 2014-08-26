json.array!(@existencia) do |existencium|
  json.extract! existencium, :id, :IdExistencia, :IdArticulo, :IdAlmacen, :Cantidad, :Fecha, :FechaCad
  json.url existencium_url(existencium, format: :json)
end
