=begin 
  DESAFIO: CUENTAS BANCARIAS Y BARAJA DE CARTAS

  INSTRUCCIONES
  
  Ejercicio 1: Bank Accounts

  1. Crear las clases User y BankAccount.
  2. Crear el constructor de la clase BankAccount que reciba el nombre del banco, el número de cuenta y el saldo, por defecto será cero.
  3. Crear el método 'transference' en la clase BankAccount que reciba un monto y otra cuenta. Este método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto. Es necesario que exista el attr_writer o attr_accessor del saldo para acceder al saldo de la otra cuenta.
  4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra.
  5. Crear el constructor de User que reciba el nombre del usuario y un arreglo con al menos 1 cuenta bancaria.
  6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario.
=end

class User
  def initialize(user_name, accounts)
    raise RangeError, "Se debe tener al menos una cuenta bancaria." if accounts.count == 0
    @user_name = user_name
    @accounts = accounts
  end

  def total_balance
    total = 0
    for account in @accounts
      total += account.balance
    end
    display_balance(total)
  end

  def display_balance(balance)
    puts "Tu saldo actual es de: $#{balance}"
  end
end

class BankAccount
  attr_accessor :balance
  attr_reader :account_number, :name_bank

  def initialize(name_bank, account_number, balance=0)
    @name_bank = name_bank
    @account_number = account_number
    @balance = balance
  end

  def transference(amount, account)
    self.balance -= amount
    account.balance += amount
    successful_transfer(account)
  end

  def successful_transfer(account)
    puts "TRANSFERENCIA EXITOSA"
    puts "##########################"
    puts "Desde cuenta: #{@account_number}-#{@name_bank}"
    puts "Saldo: #{@balance}"
    puts "---"
    puts "A cuenta: #{account.account_number}-#{account.name_bank}"
    puts "Saldo: #{account.balance}"
    puts "##########################"
  end
end

account1 = BankAccount.new("Estado", 4444, 5000)
account2 = BankAccount.new("BCI", 8888, 5000)

account1.transference(5000, account2)

user1 = User.new("Marcel", [account1, account2])
puts user1.total_balance

user2 = User.new("Leon", [])