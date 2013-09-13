class Usuario < ActiveRecord::Base
	validates :id_usuario,  uniqueness: true
	validates :nombre, :clave, presence: true 
	validates :nombre, length: {minimum: 5, too_short: "el nombre debe tener al menos 5 caracteres"}
	validates :clave, length: {minimum: 5, too_short: "la clave debe tener al menos 5 caracteres"}

	has_many :trabajos, dependent: :destroy
	before_destroy :asegurarse_que_no_tiene_trabajos_asociados

	private
	
	def asegurarse_que_no_tiene_trabajos_asociados
		if trabajos.empty?
			return true
		else
			errors.add(:base, 'Trabajos asociados')
			return false
		end
	end


end
