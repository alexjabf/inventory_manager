class CreateAlmacenes < ActiveRecord::Migration
  def change
    create_table :almacenes,
      {
      :id           => false,
      :primary_key => :IdAlmacen
    } do |t|
      t.integer :IdAlmacen
      t.string :nombre
      t.string :TipoAlmacen
    end
    execute %Q{ ALTER TABLE "almacenes" ADD PRIMARY KEY ("IdAlmacen"); }
  end
end
