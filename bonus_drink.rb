class BonusDrink
  EXCHANGE_RATE = 3

  def self.total_count_for(amount)
    return 0 if amount <= 0
    amount + exchange_and_drink(amount)
  end

  def self.exchange_and_drink(empty_bottles)
    return 0 if empty_bottles < EXCHANGE_RATE

    drinks = empty_bottles / EXCHANGE_RATE
    empty_bottles = empty_bottles % EXCHANGE_RATE + drinks
    drinks += exchange_and_drink(empty_bottles)
    drinks
  end
end
