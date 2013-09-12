class Trabajo < ActiveRecord::Base
	validates :usuario, :tipo, :fecha, :hora, presence: true
	validates :hora, format: {
		with: /[0-9]{2}:[0-9]{2}/,
		message: 'debe ser una hora valida (ej: 16:30, 09:25).'
	}
end
