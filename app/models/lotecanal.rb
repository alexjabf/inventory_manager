class Lotecanal < ActiveRecord::Base
  establish_connection "sqlserver"
  self.table_name = "lotecanal"
  self.primary_key= "IDlote"
  #ASSOCIATIONS

  #NESTED ATTRIBUTES

  #VALIDATIONS
#  validates :IDlote, :descripcion, :presence => true
#  LOTECANAL_IDLOTE = /^[0-9]+$/
#  LOTECANAL_IDFOLIO = /^[0-9]+$/
#  LOTECANAL_PESOINICIAL = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_PESOFINAL = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_COSTOINICIAL = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_COSTOFINAL = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_COSTOSINDIRECTOS = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_MANOOBRA = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_NUMFACTURA = /^[0-9]+$/
#  LOTECANAL_SEBO = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_HUESO = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_ASERRIN = /^\-?[0-9]*\.?[0-9]+$/
#  LOTECANAL_CONSECUTIVO = /^[0-9]+$/
#  LOTECANAL_FECHA = /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/
#  LOTECANAL_ESTADO = /./
#  LOTECANAL_CIERREFECHA = /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/
#  LOTECANAL_DESCRIPCION = /./
#    validates :IDlote, format: { with: LOTECANAL_IDLOTE, multiline: true }, length: { within: 1..10 }
#  validates :IDfolio, format: { with: LOTECANAL_IDFOLIO, multiline: true }, length: { within: 1..10 }, allow_blank: true
#  validates :pesoinicial, format: { with: LOTECANAL_PESOINICIAL, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :pesofinal, format: { with: LOTECANAL_PESOFINAL, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :costoinicial, format: { with: LOTECANAL_COSTOINICIAL, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :costofinal, format: { with: LOTECANAL_COSTOFINAL, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :costosIndirectos, format: { with: LOTECANAL_COSTOSINDIRECTOS, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :manoObra, format: { with: LOTECANAL_MANOOBRA, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :numfactura, format: { with: LOTECANAL_NUMFACTURA, multiline: true }, length: { within: 1..10 }, allow_blank: true
#  validates :sebo, format: { with: LOTECANAL_SEBO, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :hueso, format: { with: LOTECANAL_HUESO, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :aserrin, format: { with: LOTECANAL_ASERRIN, multiline: true }, length: { within: 1..12 }, allow_blank: true
#  validates :consecutivo, format: { with: LOTECANAL_CONSECUTIVO, multiline: true }, length: { within: 1..10 }, allow_blank: true
#  validates :fecha, format: { with: LOTECANAL_FECHA, multiline: true }, length: { within: 1..100 }, allow_blank: true
#  validates :estado, format: { with: LOTECANAL_ESTADO, multiline: true }, length: { within: 1..60 }, allow_blank: true
#  validates :cierrefecha, format: { with: LOTECANAL_CIERREFECHA, multiline: true }, length: { within: 1..100 }, allow_blank: true
#  validates :descripcion, format: { with: LOTECANAL_DESCRIPCION, multiline: true }, length: { within: 50..500 }
#
#  validates :consecutivo, numericality: {only_integer: true} , allow_blank: true
#
#
#  validates :aserrin, numericality: true , allow_blank: true
#
#  validates :hueso, numericality: true , allow_blank: true
#
#  validates :sebo, numericality: true , allow_blank: true
#
#  validates :numfactura, numericality: {only_integer: true} , allow_blank: true
#
#
#  validates :manoObra, numericality: true , allow_blank: true
#
#  validates :costosIndirectos, numericality: true , allow_blank: true
#
#  validates :costofinal, numericality: true , allow_blank: true
#
#  validates :costoinicial, numericality: true , allow_blank: true
#
#  validates :pesofinal, numericality: true , allow_blank: true
#
#  validates :pesoinicial, numericality: true , allow_blank: true
#
#  validates :IDfolio, numericality: {only_integer: true} , allow_blank: true
#
#
#  validates :IDlote, numericality: {only_integer: true} 



  #FUNCTIONS
  def select_display
    IDlote.to_s + '  ' + descripcion.to_s
  end
  def select_value
    IDlote.to_s
  end
  def select_autocomplete
    IDlote.to_s
  end


end
