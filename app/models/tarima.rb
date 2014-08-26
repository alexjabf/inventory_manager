class Tarima < ActiveRecord::Base
  establish_connection "sqlserver"
  self.table_name = "Tarimas"
  self.primary_key= "idTarima"
  #ASSOCIATIONS

  #NESTED ATTRIBUTES

  #VALIDATIONS
  validates :idTarima, :CodigoTarima, :Fecha, :presence => true
  TARIMA_IDTARIMA = /^[0-9]+$/
  TARIMA_CODIGOTARIMA = /./
  TARIMA_FECHA = /./
  TARIMA_ACTIVA = /^t|^f/
    validates :idTarima, format: { with: TARIMA_IDTARIMA, multiline: true }, length: { within: 1..10 }
  validates :CodigoTarima, format: { with: TARIMA_CODIGOTARIMA, multiline: true }, length: { within: 1..60 }
  validates :Fecha, format: { with: TARIMA_FECHA, multiline: true }, length: { within: 1..30 }
  validates :Activa, format: { with: TARIMA_ACTIVA, multiline: true }, length: { within: 1..5 }, allow_blank: true

  validates :idTarima, numericality: {only_integer: true} 



  #FUNCTIONS
  def select_display
    idTarima.to_s + '  ' + CodigoTarima.to_s
  end
  def select_value
    idTarima.to_s + '  ' + CodigoTarima.to_s
  end
  def select_autocomplete
    idTarima.to_s + '  ' + CodigoTarima.to_s
  end


end
