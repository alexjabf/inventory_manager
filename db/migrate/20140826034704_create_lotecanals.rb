class CreateLotecanals < ActiveRecord::Migration
  def change
    create_table :lotecanals ,
      {
      :id           => false,
      :primary_key => :IDlote
    }  do |t|
      t.integer :IDlote
      t.integer :IDfolio
      t.float :pesoinicial
      t.float :pesofinal
      t.float :costoinicial
      t.float :costofinal
      t.float :costosIndirectos
      t.float :manoObra
      t.integer :numfactura
      t.float :sebo
      t.float :hueso
      t.float :aserrin
      t.integer :consecutivo
      t.string :fecha
      t.string :estado
      t.string :cierrefecha
      t.text :descripcion
      #execute %Q{ ALTER TABLE "lotecanals" ADD PRIMARY KEY ("IDlote"); }
    end
  end
end
