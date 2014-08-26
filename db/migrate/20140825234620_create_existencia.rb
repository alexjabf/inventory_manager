class CreateExistencia < ActiveRecord::Migration
  def change
    create_table :existencia,
      {
      :id           => false,
      :primary_key => :IdExistencia
    }     do |t|
      t.integer :IdExistencia
      t.integer :IdArticulo
      t.integer :IdAlmacen
      t.integer :Cantidad
      t.string :Fecha
      t.string :FechaCad
      #execute %Q{ ALTER TABLE "Existencia" ADD PRIMARY KEY ("IdExistencia"); }
    end
  end
end
