class Corte < ActiveRecord::Base
  establish_connection "sqlserver"
  self.table_name = "corte"
  self.primary_key= "IDcorte"
  #ASSOCIATIONS

  #NESTED ATTRIBUTES

  #VALIDATIONS
  validates :IDcorte, :idarticulo, :uniqueness => true
  validates :IDcorte, :IDlote, :idarticulo, :presence => true
  CORTE_IDCORTE = /^[0-9]+$/
  CORTE_PESO = /^[0-9]+$/
  CORTE_PIEZAS = /^[0-9]+$/
  CORTE_IDLOTE = /^[0-9]+$/
  CORTE_IDARTICULO = /^[0-9]+$/
  CORTE_REEMPAQUE = /./
  CORTE_ETIQUETA = /./
  CORTE_ELIMINADO = /^t|^f/
  CORTE_VENDIDO = /^t|^f/
  CORTE_AGREGADO = /^[0-9]+$/
  CORTE_ESTATUS = /./
  CORTE_INVENTARIADO = /^t|^f/
  CORTE_CONSECUTIVO = /^[0-9]+$/
  CORTE_CADUCIDAD = /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/
    validates :IDcorte, format: { with: CORTE_IDCORTE, multiline: true }, length: { within: 1..10 }
  validates :peso, format: { with: CORTE_PESO, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :piezas, format: { with: CORTE_PIEZAS, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :IDlote, format: { with: CORTE_IDLOTE, multiline: true }, length: { within: 1..10 }
  validates :idarticulo, format: { with: CORTE_IDARTICULO, multiline: true }, length: { within: 1..10 }
  validates :reempaque, format: { with: CORTE_REEMPAQUE, multiline: true }, length: { within: 1..10 }, allow_blank: true
  validates :Etiqueta, format: { with: CORTE_ETIQUETA, multiline: true }, length: { within: 1..25 }, allow_blank: true
  validates :eliminado, format: { with: CORTE_ELIMINADO, multiline: true }, length: { within: 1..5 }, allow_blank: true
  validates :vendido, format: { with: CORTE_VENDIDO, multiline: true }, length: { within: 1..5 }, allow_blank: true
  validates :agregado, format: { with: CORTE_AGREGADO, multiline: true }, length: { within: 1..12 }, allow_blank: true
  validates :Estatus, format: { with: CORTE_ESTATUS, multiline: true }, length: { within: 1..6 }, allow_blank: true
  validates :Inventariado, format: { with: CORTE_INVENTARIADO, multiline: true }, length: { within: 1..5 }, allow_blank: true
  validates :Consecutivo, format: { with: CORTE_CONSECUTIVO, multiline: true }, length: { within: 1..10 }, allow_blank: true
  validates :Caducidad, format: { with: CORTE_CADUCIDAD, multiline: true }, length: { within: 1..60 }, allow_blank: true

  validates :Consecutivo, numericality: {only_integer: true} , allow_blank: true


  validates :agregado, numericality: true , allow_blank: true

  validates :idarticulo, numericality: {only_integer: true} 


  validates :IDlote, numericality: {only_integer: true} 


  validates :piezas, numericality: true , allow_blank: true

  validates :peso, numericality: true , allow_blank: true

  validates :IDcorte, numericality: {only_integer: true} 



  #FUNCTIONS
  def select_display
    IDcorte.to_s + '  ' + idArticulo.to_s
  end
  def select_value
    IDcorte.to_s + '  ' + idArticulo.to_s
  end
  def select_autocomplete
    IDcorte.to_s + '  ' + idArticulo.to_s
  end


end
