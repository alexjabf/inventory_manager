json.array!(@lotecanals) do |lotecanal|
  json.extract! lotecanal, :id, :IDlote, :IDfolio, :pesoinicial, :pesofinal, :costoinicial, :costofinal, :costosIndirectos, :manoObra, :numfactura, :sebo, :hueso, :aserrin, :consecutivo, :fecha, :estado, :cierrefecha, :descripcion
  json.url lotecanal_url(lotecanal, format: :json)
end
