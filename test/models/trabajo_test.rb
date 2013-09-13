require 'test_helper'

class TrabajoTest < ActiveSupport::TestCase
  	test "campos de trabajo no vacios" do
		trabajo = Trabajo.new
		assert trabajo.invalid?
		assert trabajo.errors[:usuario].any?
		assert trabajo.errors[:tipo].any?
		assert trabajo.errors[:fecha].any?
		assert trabajo.errors[:hora].any?
	end

	test "formato fecha" do
 		trabajo = Trabajo.new
		
		trabajo.hora = "9:20"
		assert trabajo.invalid?
		assert_equal "debe ser una hora valida (ej: 16:30, 09:25).", trabajo.errors[:hora].join('; ')

		trabajo.hora = "05:00pm"
		assert trabajo.invalid?
		assert_equal "debe ser una hora valida (ej: 16:30, 09:25).", trabajo.errors[:hora].join('; ')

		trabajo.hora = "19:30"
		assert trabajo.valid?
	end

	test "formato tipo" do
		trabajo = Trabajo.new		
		
		trabajo.tipo = "entr"
		assert trabajo.invalid?, "Este tipo no deberia ser aceptado"
		
		trabajo.tipo = "entrada"
		assert trabajo.valid?, "Este tipo deberia ser aceptado"
	end

end
