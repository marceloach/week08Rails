=begin 
	EJERCICIO: INTRODUCCIÓN A OBJETOS

  INSTRUCCIONES
  Se tiene el siguiente clase:

  class Perro
    def ladrar
      puts "bark bark"
    end
  end

  Perro.ladrar

  ¿Cuál es el problema con este código?
  Sin modificar la clase ¿Qué deberíamos hacer para usar correctamente el método ladrar?
=end

# El problema es que se esta llamando un metodo de clase, 
# siendo que la clase propiamente tal contiene un método de instancia.
# Para que funcione el método de instancia se debe instanciar un objeto.

class Perro
  def ladrar
    puts "bark bark"
  end
end

obj1 = Perro.new
puts obj1.ladrar