# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :a, :b

        #Constructor
        def initialize(a, b)
                max_comun_div = gcd(a, b)
		@a = a / max_comun_div
		@b = b / max_comun_div
        end

        #To_s
        def to_s
                "#@a/#@b"
        end

        #Suma
        def +(other)
		if(@b == other.b)
			suma = Fraccion.new(@a + other.a, @b)
		else
	                suma = Fraccion.new(@a * other.b + @b * other.a, @b * other.b)
        	end
		suma.simplificar
	end

        #Resta
        def -(other)
		if(@b == other.b)
                	resta = Fraccion.new(@a - other.a, @b)
		else
			resta = Fraccion.new(@a * other.b - @b * other.a, @b * other.b)
		end
		resta.simplificar
        end

        #Producto
        def *(other)
                producto = Fraccion.new(@a * other.a, @b * other.b)
		producto.simplificar
        end

        #Division
        def /(other)
                division = Fraccion.new(@a * other.b, @b * other.a)
		division.simplificar
        end

	#Simplificacion de fracciones
	def simplificar
		max_comun_div = gcd(@a, @b)
		@a = @a / max_comun_div
		@b = @b / max_comun_div
		Fraccion.new(@a, @b)
	end

end

