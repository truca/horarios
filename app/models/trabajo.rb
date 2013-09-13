class Trabajo < ActiveRecord::Base
	validates :usuario, :tipo, :fecha, :hora, :usuario_id, presence: true
	validates :hora, format: {
		with: /[0-9]{2}:[0-9]{2}/,
		message: 'debe ser una hora valida (ej: 16:30, 09:25).'
	}
	validates :tipo, format: {
		with: /(entrada|salida)/,
		message: 'el tipo debe ser "entrada" o "salida"'
	}

	belongs_to :usuario
end
