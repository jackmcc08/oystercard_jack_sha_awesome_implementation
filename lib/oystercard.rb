class Oystercard
  MAX_BALANCE = 90
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    raise "can't top up over £#{MAX_BALANCE}" if @balance + amount > MAX_BALANCE

    @balance += amount
    "Topped up succesfully! Balance of Oystercard is now £#{format('%.2f', @balance)}"
  end

  def deduct(amount)
    @balance -= amount
    "Deducted £#{format('%.2f', amount)} succesfully! Balance of Oystercard is now £#{format('%.2f', @balance)}"
  end
end
  