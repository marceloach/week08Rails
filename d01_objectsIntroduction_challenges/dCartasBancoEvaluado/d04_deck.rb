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

require_relative "d04_cards"

FIVE_CARDS = 5
CARDS_SUITS = ["C", "D", "E", "T"]

class Deck
  attr_accessor :cards
  
  def initialize
    @cards = []
    FIVE_CARDS.times do
      card = Card.new(rand(1..13), CARDS_SUITS.sample)
      cards.push(card)
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def throw
    @cards.pop
  end

  def hand_out
    @cards = @cards.drop(FIVE_CARDS)
  end

  def display_cards
    for card in cards
      print "#{card.number}#{card.suit} "
    end
  end
end

deck = Deck.new
deck.display_cards
puts ""
deck.shuffle
deck.display_cards
puts ""
deck.throw
deck.display_cards
puts ""
puts deck.hand_out.length
