require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test "usuarios no vacios" do
  	usuario = Usuario.new
  	assert usuario.invalid?
	assert usuario.errors[:id].any?
	assert usuario.errors[:nombre].any?
	assert usuario.errors[:clave].any?
  end

end
