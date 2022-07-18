=begin 
	EJERCICIO: INTRODUCCIÓN A OBJETOS

  INSTRUCCIONES
  Se tiene el siguiente clase:

  class Texto
  attr_accessor :contenido
    def initialize(contenido)
      @contenido = contenido
    end
  end

  def remplazar_vocales_por(texto, letra_nueva)
    texto.contenido.gsub(/[aeiou]/, letra_nueva)
  end
  
  contenido = Texto.new('La mar estaba serena')
  remplazar_vocales_por(contenido, 'a')

  EL código funciona bien y no presenta ningún problema, pero su uso es un poco extraño. ¿Crees que viola algún principio?
  Modifica el código para que el método remplazar_vocales_por sea un método de instancia.
=end

class Texto
  attr_accessor :contenido

  def initialize(contenido)
    @contenido = contenido
  end

  def remplazar_vocales_por(letra_nueva)
    @contenido.gsub(/[aeiou]/, letra_nueva)
  end
end

contenido = Texto.new('La mar estaba serena')
puts contenido.remplazar_vocales_por('a')
puts contenido.remplazar_vocales_por('e')
puts contenido.remplazar_vocales_por('i')
puts contenido.remplazar_vocales_por('o')
puts contenido.remplazar_vocales_por('u')