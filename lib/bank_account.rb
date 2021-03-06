class BankAccount

attr_accessor :balance, :status
attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    @balance += money
    puts "Your balance is $#{self.balance}."
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    @status == "open" && @balance >= 1000
  end

  def close_account
    @status = "closed"
  end

end
