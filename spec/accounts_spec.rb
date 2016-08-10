require 'accounts'

describe Account do
  it 'allows user to see starting balance of zero' do
      account = Account.new
      expect(account.balance).to eq 0
    end

    it 'allows user to add deposit to his current balance' do
      account1 = Account.new
      expect(account1.deposit(200, "10/01/2012")).to eq([["deposit", 200, "10/01/2012", 200]])
    end

    it 'allows user to withdraw some amount from the account' do
      account = Account.new
      account.deposit(200, "10/01/2012")
      expect(account.withdraw(100, "10/01/2012")).to eq([["deposit", 200, "10/01/2012", 200], ["withdraw", 100, "10/01/2012", 100]])
    end

    it 'should print the account details in pretty format' do
      account = Account.new
      account.deposit(200, "10/9/2010")
      account.deposit(200, "10/9/2010")
      account.withdraw(100, "10/9/2010")
      expect(account.prettyprint).to eq([["deposit", 200, "10/9/2010", 200], ["deposit", 200, "10/9/2010", 400], ["withdraw", 100, "10/9/2010", 300]])
    end
end
