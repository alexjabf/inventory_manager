class CreateCortes < ActiveRecord::Migration
  def change
    create_table :cortes,
      {
      :id           => false,
      :primary_key => :IDcorte
    }   do |t|
      t.integer :IDcorte
      t.float :peso
      t.float :piezas
      t.integer :IDlote
      t.integer :idArticulo
      t.string :reempaque
      t.string :Etiqueta
      t.boolean :eliminado
      t.boolean :vendido
      t.float :agregado
      t.string :Estatus
      t.boolean :Inventariado
      t.integer :Consecutivo
      t.string :Caducidad
      #execute %Q{ ALTER TABLE "cortes" ADD PRIMARY KEY ("IDcorte"); }
    end
  end
end
