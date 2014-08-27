class CreateTarimas < ActiveRecord::Migration
  def change
    create_table :tarimas,
      {
      :id           => false,
      :primary_key => :idTarima
    }    do |t|
      t.integer :idTarima
      t.string :CodigoTarima
      t.date :Fecha
      t.boolean :Activa
      #execute %Q{ ALTER TABLE "tarimas" ADD PRIMARY KEY ("idTarima"); }
    end
  end
end
