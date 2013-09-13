class CambiarTipoColumnaTrabajos < ActiveRecord::Migration
  def change
  	remove_column :trabajos, :usuario_id
  	change_column :trabajos, :usuario, :integer
  end
end
