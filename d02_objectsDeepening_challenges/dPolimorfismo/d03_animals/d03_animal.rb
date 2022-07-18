=begin 
  DESAFIO: HERENCIA POLIMORFISMO Y MÓDULOS

  INSTRUCCIONES
  
  Ejercicio 2:

  1. Crear la clase Animal con un atributo nombre. Agregar un método getter para el atributo nombre.
  2. Crear las clases Ave, Mamífero e Insecto. Ambas heredan de Animal.
  3. Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave.
  4. Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamífero.
  5. Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto.
  6. Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de definir las habilidades y tipo de alimentación de cada animal.
=end

class Animal
  attr_reader :name

  def initialize(name)
    @name = name    
  end
end

class Bird < Animal
end

class Insect < Animal
end

class Mammal < Animal
end