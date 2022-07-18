=begin 
	EJERCICIO: INTRODUCCIÓN A OBJETOS

  INSTRUCCIONES
  Se tiene el siguiente clase:

  class Led
    def on
      @on = true
    end
    def off
      @on = false
    end
  end

  ¿Cómo podemos hacer para que todo led nuevo tenga estado @on = false?
  ¿Cómo se llama el método que hay que agregar?
  Que cambio tendríamos que hacer para que tenga el valor por defecto false pero que también nos permita darle un valor inicial distinto si lo necesitamos.
  Qué tendríamos que agregar y en qué método para mostrar una excepción en caso de que el valor sea distinto a true o false.
=end

class Led
  attr_accessor :on

  def initialize(on = false)
    raise ArgumentError, "Argumento 'on' es de tipo #{on.class}" if !(on.class == TrueClass || on.class == FalseClass)
    @on = on
  end

  def led_on
    @on = true
  end

  def led_off
    @on = false
  end
end

obj1 = Led.new
puts obj1.on
puts obj1.led_on

puts "---"

obj2 = Led.new(true)
puts obj2.on
puts obj2.led_on

obj3 = Led.new("status")
puts obj3.on