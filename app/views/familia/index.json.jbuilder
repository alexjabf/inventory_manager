json.array!(@familia) do |familium|
  json.extract! familium, :id, :idFamilia, :FamClave, :FamDescripcion
  json.url familium_url(familium, format: :json)
end
