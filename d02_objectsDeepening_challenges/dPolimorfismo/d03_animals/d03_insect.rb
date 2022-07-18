=begin 
  DESAFIO: HERENCIA POLIMORFISMO Y MÓDULOS
=end

require_relative "d03_module"
require_relative "d03_animal"

class Fly < Insect
  include Habilidades::Volador
  include Alimentacion::Omnivoro
end

class Butterfly < Insect
  include Habilidades::Volador
  include Alimentacion::Herbivoro
end

class Bee < Insect
  include Habilidades::Volador
  include Alimentacion::Herbivoro
end

fly1 = Fly.new("Moscon")
puts fly1.comer
puts "---"

butterfly1 = Butterfly.new("Boterflai")
puts butterfly1.volar
puts "---"

bee1 = Bee.new("Mantra")
puts bee1.aterrizar
puts "---"