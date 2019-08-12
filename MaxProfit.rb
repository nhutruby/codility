def max_profit(a)
  max_profit = 0
  min_price = 1 / 0.0

  a.each do |v|
    min_price = [min_price, v].min
    max_profit = [max_profit, v - min_price].max
  end

  max_profit
end