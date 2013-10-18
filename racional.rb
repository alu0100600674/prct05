# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
        #Constructor
        def initialize(a, b)
                @a, @b = a, b
        end

        #To_s
        def to_s
                "#{@a}/#{@b}"
        end

        #Suma
        def +(other)
                Fraccion.new(@a + other.a, @b + other.b)
        end

        #Resta
        def -(other)
                Fraccion.new(@a - other.b, @b - other.b)
        end

        #Producto
        def *(value)
                Fraccion.new(@a * value, @b * value)
        end

        #Division
        def /(value)
                Fraccion.new(@a, @b * value)
        end
end
