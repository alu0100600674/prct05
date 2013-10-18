# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	#Test de def
	def test_simple
		assert.equal("2/4", Fraccion.new(2, 4).to_s)
	end

	#Test para la suma
	def test_suma
		assert_equal("3/4", (Fraccion.new(1, 2) + Fraccion.new(1, 4)).to_s)
	end

	#Test para la resta
	def test_resta
		assert_equal("1/2", (Fraccion.new(3, 4) - Fraccion.new(1, 4)).to_s)
	end

	#Test para la multiplicacion
	def test_producto
		assert_equal("3/20", (Fraccion.new(2, 5) * Fraccion.new(3, 8)).to_s)
	end

	#Test para la division
	def test_division
		assert_equal("16/15", (Fraccion.new(2, 5) / Fraccion.new(3, 8)).to_s)
	end

end
