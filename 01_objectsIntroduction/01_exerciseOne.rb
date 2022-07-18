=begin 
	EJERCICIO: INTRODUCCIÓN A OBJETOS

  INSTRUCCIONES
  Se tiene el siguiente clase:

  class Persona
    def initialize(nombre)
      @nombre = nombre
    end
  end

  p = Persona.new('Usuario Prueba')
  p.nombre = 'Usuario 2.0'

  ¿Qué principio impide el acceso a los estados internos del objeto?
  ¿Qué cambios tenemos que hacer dentro de la clase para que el código funcione?
=end

class Persona
  attr_accessor :nombre

  def initialize(nombre)
    @nombre = nombre
  end
end

p = Persona.new('Usuario Prueba')
puts p.nombre
p.nombre = 'Usuario 2.0'
puts p.nombre
