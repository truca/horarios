class CambiarNombreColumnaUsuario < ActiveRecord::Migration
  def change
  		rename_column :usuarios, :id_usuario, :id
  end
end
