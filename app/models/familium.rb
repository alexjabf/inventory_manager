class Familium < ActiveRecord::Base
  establish_connection "sqlserver"
  self.table_name = "familia"
  self.primary_key= "idFamilia"
  #ASSOCIATIONS

  #NESTED ATTRIBUTES

  #VALIDATIONS
  validates :FamDescripcion, :uniqueness => true
  validates :idFamilia, :presence => true
  FAMILIUM_IDFAMILIA = /^[0-9]+$/
  FAMILIUM_FAMCLAVE = /./
  FAMILIUM_FAMDESCRIPCION = /./
  validates :idFamilia, format: { with: FAMILIUM_IDFAMILIA, multiline: true }, length: { within: 1..10 }
  validates :FamClave, format: { with: FAMILIUM_FAMCLAVE, multiline: true }, length: { within: 1..4 }, allow_blank: true
  validates :FamDescripcion, format: { with: FAMILIUM_FAMDESCRIPCION, multiline: true }, length: { within: 1..100 }, allow_blank: true

  validates :idFamilia, numericality: {only_integer: true} 



  #FUNCTIONS
  def select_display
    idFamilia.to_s + '  ' + FamClave.to_s + '  ' + FamDescripcion.to_s
  end
  def select_value
    idFamilia.to_s + '  ' + FamClave.to_s + '  ' + FamDescripcion.to_s
  end
  def select_autocomplete
    idFamilia.to_s + '  ' + FamDescripcion.to_s
  end


end
