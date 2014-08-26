class Almacene < ActiveRecord::Base
  establish_connection "sqlserver"
  self.table_name = "Almacenes"
  self.primary_key= "IdAlmacen"

  #ASSOCIATIONS

  #NESTED ATTRIBUTES

  #VALIDATIONS
  validates :IdAlmacen, :Nombre, :presence => true
  ALMACENE_IDALMACEN = /^[0-9]+$/
  ALMACENE_NOMBRE = /^[a-zA-Z., ]+$/
  ALMACENE_TIPOALMACEN = /^[a-zA-Z., ]+$/
  validates :IdAlmacen, format: { with: ALMACENE_IDALMACEN, multiline: true }, length: { within: 1..10 }
  validates :Nombre, format: { with: ALMACENE_NOMBRE, multiline: true }, length: { within: 1..50 }
  validates :TipoAlmacen, format: { with: ALMACENE_TIPOALMACEN, multiline: true }, length: { within: 1..50 }, allow_blank: true

  validates :IdAlmacen, numericality: {only_integer: true} 



  #FUNCTIONS
  def select_display
    IdAlmacen.to_s + '  ' + Nombre.to_s
  end
  def select_value
    IdAlmacen.to_s + '  ' + Nombre.to_s
  end
  def select_autocomplete
    IdAlmacen.to_s + '  ' + Nombre.to_s
  end


end
