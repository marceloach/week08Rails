=begin 
  DESAFIO: CUENTA BANCARIA

  INSTRUCCIONES
  
  Ejercicio 1: Poker Cards

  Crear la clase carta con los atributos numero y pinta.
    Agregar los getters y setters a ambos atributos.
    Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'.
  
  Tip 1: Para escoger un número al azar ocupar Random.rand(rango_inferior, rango_superior).
  Tip 2: Agregar las pintas posibles en un arreglo y ocupar el método .sample.
  
  Probar la clase creando un arreglo con 5 cartas.
=end

FIVE_CARDS = 5
CARDS_SUITS = ["C", "D", "E", "T"]

class PokerCards
  attr_accessor :number, :suit

  def initialize(number, suit)
    raise RangeError, "Se debe ingresar un número entre 1 a 13." if !(number > 0 && number <= 13)
    raise RangeError, "Se debe ingresar la inicial de la pinta." if suit.length != 1
    @number = number
    @suit = suit    
  end
end

cards = []

FIVE_CARDS.times do
  card = PokerCards.new(rand(1..13), CARDS_SUITS.sample)
  cards.push(card)
end

for card in cards 
  puts "#{card.number}, #{card.suit}"
end