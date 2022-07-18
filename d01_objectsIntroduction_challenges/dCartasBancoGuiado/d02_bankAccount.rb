=begin 
  DESAFIO: CUENTA BANCARIA

  INSTRUCCIONES
  
  Ejercicio 2: Bank Account

  Crear la clase con el nombre BankAccount.
    Los métodos getter y setter para el atributo user_name.
    Crear el constructor que reciba el user_name y account_number y lo asigne a los atributos.

  Levantar una excepción del tipo RangeError si el atributo account_number tiene un número de dígitos distinto a 8. Se puede ocupar el método .digits para obtener los dígitos y .count para contarlos.

    Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP, este valor puede ser 1 o 0. Por defecto será 0.
    Crear un método llamado account_number que devuelva con el número de cuenta con un prefijo '1-' si es vip y '0-' si no lo es.
  Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver '1-00112233'.
=end

class BankAccount
  attr_accessor :user_name

  def initialize(user_name, account_number, vip = 0)
    raise RangeError, "El número de la cuenta bancaria debe contener 8 dígitos." if account_number.digits.count != 8
    @user_name = user_name
    @account_number = account_number
    @vip = vip    
  end

  def account_number
    "#{@vip}-#{@account_number}"
  end

end

account1 = BankAccount.new("Estado", 12345678, 0)
puts account1.account_number

account2 = BankAccount.new("Estado", 123456789, 0)
puts account2.account_number