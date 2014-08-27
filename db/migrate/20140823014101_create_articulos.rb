class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos,
      {
      :id           => false,
      :primary_key => :idArticulo
    }  do |t|
      t.integer :idArticulo
      t.integer :idFamilia
      t.integer :SubFamilia
      t.integer :ArtClave
      t.integer :ArtClaveAlterna
      t.text :Descripcion
      t.string :descripcion_corta
      t.float :Cont
      t.integer :idUnidad
      t.integer :PiezasxCaja
      t.float :Costoxpza
      t.float :Costoxcaja
      t.float :Costoprod
      t.integer :PzasxEmp
      t.string :Tipo_Articulo
      t.string :Origen
      t.date :Fecha
      t.date :FechaModificacion
      t.boolean :Activo
      t.string :Categoria
      t.integer :idAlmacen
      t.float :costoUnidadMedida
      t.float :ultimoCosto
      t.float :costoPromedio
      t.string :tipoEtiqueta
      t.float :precioVenta
      #execute %Q{ ALTER TABLE "articulos" ADD PRIMARY KEY ("idArticulo"); }
    end
  end
end
