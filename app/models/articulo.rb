class Articulo < ActiveRecord::Base
  establish_connection "sqlserver"
  self.table_name = "articulos"
  self.primary_key= "idArticulo"
  #ASSOCIATIONS

  #NESTED ATTRIBUTES

  #VALIDATIONS
  validates :idArticulo, :uniqueness => true
  validates :idArticulo, :idFamilia, :SubFamilia, :ArtClave, :ArtClaveAlterna, :descripcion, :descripcion_corta, :presence => true
  ARTICULO_IDARTICULO = /^[0-9]+$/
  ARTICULO_IDFAMILIA = /^[0-9]+$/
  ARTICULO_SUBFAMILIA = /^[0-9]+$/
  ARTICULO_ARTCLAVE = /^[0-9]+$/
  ARTICULO_ARTCLAVEALTERNA = /^[0-9]+$/
  ARTICULO_DESCRIPCION = /./
  ARTICULO_DESCRIPCION_CORTA = /./
  ARTICULO_CONT = /^[0-9]+$/
  ARTICULO_IDUNIDAD = /^[0-9]+$/
  ARTICULO_PIEZASXCAJA = /^[0-9]+$/
  ARTICULO_Costoxpza = /^[0-9]+$/
  ARTICULO_COSTOXCAJA = /^[0-9]+$/
  ARTICULO_COSTOPROD = /^[0-9]+$/
  ARTICULO_PIEZASXEMP = /^[0-9]+$/
  ARTICULO_TIPO_ARTICULO = /./
  ARTICULO_ORIGEN = /./
  ARTICULO_FECHA = /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/
  ARTICULO_FECHAMODIFICACION = /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/
  ARTICULO_ACTIVO = /^t|^f/
  ARTICULO_CATEGORIA = /^[a-zA-Z., ]+$/
  ARTICULO_IDALMACEN = /^[0-9]+$/
  ARTICULO_COSTOUNIDADMEDIDA = /^[0-9]+$/
  ARTICULO_ULTIMOCOSTO = /^[0-9]+$/
  ARTICULO_COSTOPROMEDIO = /^[0-9]+$/
  ARTICULO_TIPOETIQUETA = /./
  ARTICULO_PRECIOVENTA = /^[0-9]+$/
    validates :idArticulo, format: { with: ARTICULO_IDARTICULO, multiline: true }, length: { within: 1..10 }
  validates :idFamilia, format: { with: ARTICULO_IDFAMILIA, multiline: true }, length: { within: 1..10 }
  validates :SubFamilia, format: { with: ARTICULO_SUBFAMILIA, multiline: true }, length: { within: 1..10 }
  validates :ArtClave, format: { with: ARTICULO_ARTCLAVE, multiline: true }, length: { within: 1..10 }
  validates :ArtClaveAlterna, format: { with: ARTICULO_ARTCLAVEALTERNA, multiline: true }, length: { within: 1..10 }
  validates :descripcion, format: { with: ARTICULO_DESCRIPCION, multiline: true }, length: { within: 50..500 }
  validates :descripcion_corta, format: { with: ARTICULO_DESCRIPCION_CORTA, multiline: true }, length: { within: 1..255 }
  validates :Cont, format: { with: ARTICULO_CONT, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :idUnidad, format: { with: ARTICULO_IDUNIDAD, multiline: true }, length: { within: 1..10 }, allow_blank: true
  validates :PiezasxCaja, format: { with: ARTICULO_PIEZASXCAJA, multiline: true }, length: { within: 1..10 }, allow_blank: true
  validates :Costoxpza, format: { with: ARTICULO_Costoxpza, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :Costoxcaja, format: { with: ARTICULO_COSTOXCAJA, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :Costoprod, format: { with: ARTICULO_COSTOPROD, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :PzasxEmp, format: { with: ARTICULO_PIEZASXEMP, multiline: true }, length: { within: 1..10 }, allow_blank: true
  validates :Tipo_Articulo, format: { with: ARTICULO_TIPO_ARTICULO, multiline: true }, length: { within: 1..255 }, allow_blank: true
  validates :Origen, format: { with: ARTICULO_ORIGEN, multiline: true }, length: { within: 1..255 }, allow_blank: true
  validates :Fecha, format: { with: ARTICULO_FECHA, multiline: true }, length: { within: 1..30 }, allow_blank: true
  validates :FechaModificacion, format: { with: ARTICULO_FECHAMODIFICACION, multiline: true }, length: { within: 1..30 }, allow_blank: true
  validates :Activo, format: { with: ARTICULO_ACTIVO, multiline: true }, length: { within: 1..5 }, allow_blank: true
  validates :Categoria, format: { with: ARTICULO_CATEGORIA, multiline: true }, length: { within: 1..60 }, allow_blank: true
  validates :idAlmacen, format: { with: ARTICULO_IDALMACEN, multiline: true }, length: { within: 1..10 }, allow_blank: true
  validates :costoUnidadMedida, format: { with: ARTICULO_COSTOUNIDADMEDIDA, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :ultimoCosto, format: { with: ARTICULO_ULTIMOCOSTO, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :costoPromedio, format: { with: ARTICULO_COSTOPROMEDIO, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :tipoEtiqueta, format: { with: ARTICULO_TIPOETIQUETA, multiline: true }, length: { within: 1..4 }, allow_blank: true
  validates :precioVenta, format: { with: ARTICULO_PRECIOVENTA, multiline: true }, length: { within: 1..12 }, allow_blank: true

  validates :precioVenta, numericality: true , allow_blank: true

  validates :costoPromedio, numericality: true , allow_blank: true

  validates :ultimoCosto, numericality: true , allow_blank: true

  validates :costoUnidadMedida, numericality: true , allow_blank: true

  validates :idAlmacen, numericality: {only_integer: true} , allow_blank: true


  validates :PzasxEmp, numericality: {only_integer: true} , allow_blank: true


  validates :Costoprod, numericality: true , allow_blank: true

  validates :Costoxcaja, numericality: true , allow_blank: true

  validates :Costoxpza, numericality: true , allow_blank: true

  validates :PiezasxCaja, numericality: {only_integer: true} , allow_blank: true


  validates :idUnidad, numericality: {only_integer: true} , allow_blank: true


  validates :Cont, numericality: true , allow_blank: true

  validates :ArtClaveAlterna, numericality: {only_integer: true} 


  validates :ArtClave, numericality: {only_integer: true} 


  validates :SubFamilia, numericality: {only_integer: true} 


  validates :idFamilia, numericality: {only_integer: true} 


  validates :idArticulo, numericality: {only_integer: true} 



  #FUNCTIONS
  def select_display
    idArticulo.to_s + '  ' + descripcion.to_s
  end
  def select_value
    idArticulo.to_s
  end
  def select_autocomplete
    idArticulo.to_s
  end


end
