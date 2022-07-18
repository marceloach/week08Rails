=begin 
  DESAFIO: HERENCIA POLIMORFISMO Y MÓDULOS
=end

require_relative "d03_module"
require_relative "d03_animal"

class Dog < Mammal
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Cat < Mammal
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Cow < Mammal
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

dog1 = Dog.new("Dogy")
puts dog1.nadar
puts "---"

cat1 = Cat.new("Mishu")
puts cat1.caminar
puts "---"

cow1 = Cow.new("Lechera")
puts cow1.comer
puts "---"