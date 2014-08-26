class Existencium < ActiveRecord::Base
  establish_connection "sqlserver"
  self.table_name = "Existencia"
  self.primary_key= "IdExistencia"
  #ASSOCIATIONS

  #NESTED ATTRIBUTES

  #VALIDATIONS
  validates :IdExistencia, :IdArticulo, :uniqueness => true
  validates :IdExistencia, :IdArticulo, :IdAlmacen, :presence => true
  EXISTENCIUM_IDEXISTENCIA = /^[0-9]+$/
  EXISTENCIUM_IDARTICULO = /^[0-9]+$/
  EXISTENCIUM_IDALMACEN = /^[0-9]+$/
  EXISTENCIUM_CANTIDAD = /^[0-9]+$/
  EXISTENCIUM_FECHA = /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/
  EXISTENCIUM_FECHACAD = /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/
    validates :IdExistencia, format: { with: EXISTENCIUM_IDEXISTENCIA, multiline: true }, length: { within: 1..10 }
  validates :IdArticulo, format: { with: EXISTENCIUM_IDARTICULO, multiline: true }, length: { within: 1..10 }
  validates :IdAlmacen, format: { with: EXISTENCIUM_IDALMACEN, multiline: true }, length: { within: 1..10 }
  validates :Cantidad, format: { with: EXISTENCIUM_CANTIDAD, multiline: true }, length: { within: 1..10 }, allow_blank: true
  validates :Fecha, format: { with: EXISTENCIUM_FECHA, multiline: true }, length: { within: 1..100 }, allow_blank: true
  validates :FechaCad, format: { with: EXISTENCIUM_FECHACAD, multiline: true }, length: { within: 1..100 }, allow_blank: true

  validates :Cantidad, numericality: {only_integer: true} , allow_blank: true


  validates :IdAlmacen, numericality: {only_integer: true} 


  validates :IdArticulo, numericality: {only_integer: true} 


  validates :IdExistencia, numericality: {only_integer: true} 



  #FUNCTIONS
  def select_display
    IdExistencia.to_s + '  ' + IdArticulo.to_s + '  ' + IdAlmacen.to_s
  end
  def select_value
    IdExistencia.to_s + '  ' + IdArticulo.to_s
  end
  def select_autocomplete
    IdExistencia.to_s + '  ' + IdArticulo.to_s
  end


end
