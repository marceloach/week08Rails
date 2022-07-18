=begin 
  DESAFIO: HERENCIA POLIMORFISMO Y MÓDULOS

  INSTRUCCIONES
  
  Ejercicio 1:

  Utilizando los principios de herencia y polimorfismo, refactoriza el siguiente código para eliminar la innecesaria cantidad de sentencias if en los métodos task e introduce.
=end

class Person
  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def birthday
    @age += 1
  end
end

class Student < Person
  def talk
    puts "Aquí es la clase de programación con Ruby."
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Teacher < Person
  def talk
    puts "Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Parent < Person
  def talk
    puts "Aquí es la reunión de apoderados."
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end

student1 = Student.new("Mach", "Cashuer", 29)
student1.talk
student1.introduce
puts "---"

teacher1 = Teacher.new("Robert", "Robinson", 54)
teacher1.talk
teacher1.introduce
puts "---"

parent1 = Parent.new("Miguel", "Zar", 53)
parent1.talk
parent1.introduce
puts "---"