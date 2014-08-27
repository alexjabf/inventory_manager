class CreateFamilia < ActiveRecord::Migration
  def change
    create_table  :familia,
      {
      :id           => false,
      :primary_key => :idFamilia
    } do |t|
      t.integer :idFamilia, primary_key: true, null: false
      t.string :FamClave
      t.text :FamDescripcion
    end
#    execute %Q{ ALTER TABLE "familia" ADD PRIMARY KEY ("idFamilia"); }
  end
end
