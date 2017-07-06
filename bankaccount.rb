class BankAccount

  # these are class variables

    @@interest_rate = 0.02
    @@accounts = []
# these are intance variables

  def initialize
    @balance = 0
  end

  # these are readers
def balance
  return @balance
end

# thes are writters
def balance=(num)
  @balance = num
end

# these are instance methods

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdrwal(amount)
    @balance = @balance - amount
  end

# these are class methods

  def self.create
    b = BankAccount.new
    @@accounts << b
    return b
  end

  def self.total_funds
    total = 0
    @@accounts.each do |accounts|
      total += accounts.balance
    end
  puts "the total sum of accounts is #{total}"
  end

  def interest_time
    intrest = 0
    @@accounts.each do |accounts|
    intrest = accounts.balance * @@interest_rate
    @balance = accounts.balance + intrest
  end
  puts "The new account balance is #{@balance}"
end


nadia = BankAccount.new
puts nadia

nadia.deposit(100)
 nadia.print_balance

nadia.withdrwal(50)
  nadia.print_balance

nadia.gain_interest
