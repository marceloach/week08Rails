class BankAccount
  attr_accessor :name_bank

  def initialize(name_bank, account_number, vip = 0)

    @name_bank = name_bank
    @vip = vip    
    @account_number = account_number
    
    begin
      raise RangeError, "El número de la cuenta bancaria debe contener 8 dígitos." if account_number.digits.count != 8
    rescue => exception
      puts "#{exception.message} => #{exception.class}"
      while @account_number.digits.count != 8
        print "Ingrese nuevamente el número de cuenta:"
        @account_number = gets.to_i
      end
    end  
    
  end

  def account_number
    "#{@vip}-#{@account_number}"    
  end
end

account1 = BankAccount.new("Estado", 12345678)
puts account1.account_number

account2 = BankAccount.new("Falabella", 123456789, 0)
puts account2.account_number

account3 = BankAccount.new("BCI", 88885688, 1)
puts account3.account_number