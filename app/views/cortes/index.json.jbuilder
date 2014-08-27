json.array!(@cortes) do |corte|
  json.extract! corte, :id, :IDcorte, :peso, :piezas, :IDlote, :idarticulo, :reempaque, :Etiqueta, :eliminado, :vendido, :agregado, :Estatus, :Inventariado, :Consecutivo, :Caducidad
  json.url corte_url(corte, format: :json)
end
