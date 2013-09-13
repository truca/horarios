class ReferenciaDeUsuariosEnTrabajo < ActiveRecord::Migration
  def change
	add_column :trabajos, :usuario_id, :integer
  end
end
