class Account
   attr_reader :name
   attr_reader :balance
   
   def initialize(name,balance=100)
       @name = name
       @balance=balance
end

private

def pin 
    @pin = 1234
end
def pin_error
    return "Access denied: incorrect PIN."
end

public 

def display_balance(pin_number)
    puts "Balance: $#{balance}." if pin_number==@pin
    pin_error if pin_number!=@pin
end

def withdraw(pin_number,amount)
 if pin_number == @pin && amount <= @balance
     @balance -= amount
     puts "Withdrew #{amount}. New balance: $#{@balance}."
 else pin_error
end 
end

def deposit(pin_number,amount)
    if pin_number = @pin
        @balance += amount
    else pin_error
end
end

end

class CheckingAccount < Account
end
class SavingsAccount < Account
end
checking_account = Account.new("John", 1000)

