class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :id_usuario
      t.string :nombre
      t.string :clave

      t.timestamps
    end
  end
end
