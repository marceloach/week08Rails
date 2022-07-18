=begin 
  DESAFIO: CUENTAS BANCARIAS Y BARAJA DE CARTAS

  INSTRUCCIONES
  
  Ejercicio 2: Desk Cards

  1. Crear la clase Card con los atributos number y pint.
  2. Agregar los getters y setters a ambos atributos.
  3. Crear el constructor de la clase Card que le permita recibir un número del 1 al 13 y la pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'.
  4. Utilizar el ejercicio cartas creado en la primera parte y dejarlo en el archivo carta.rb
  5. Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo.
  6. Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta y guardarse dentro del arreglo cartas.
  7. Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle.
  8. Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop.
  9. Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja.
=end

class Card
  attr_accessor :number, :suit

  def initialize(number, suit)
    raise RangeError, "Se debe ingresar un número entre 1 a 13." if !(number > 0 && number <= 13)
    raise RangeError, "Se debe ingresar la inicial de la pinta." if suit.length != 1
    @number = number
    @suit = suit    
  end
end

