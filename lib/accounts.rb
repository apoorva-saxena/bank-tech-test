class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance;
    @array = [];
  end

  def deposit(deposit_amount, date)
    @balance += deposit_amount
    @array << ["deposit",deposit_amount, date, @balance]
    return @array
  end

  def withdraw(withdraw_amount, date)
    @balance -= withdraw_amount
    @array << ["withdraw",withdraw_amount, date, @balance]
    return @array
  end

  def prettyprint
     puts "date || credit || debit || balance"
    @array.each do |request|
      if(request[0] == "deposit")
        puts request[2].to_s + " || " + request[1].to_s + " || " + " || " + request[3].to_s
      else
        puts request[2].to_s + " || " + " || " + request[1].to_s + " || " + request[3].to_s
      end
    end
  end


end
