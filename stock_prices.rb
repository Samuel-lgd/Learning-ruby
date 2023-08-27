def stock_picker(prices)
  min_price = prices[0]
  min_index = 0

  best_profit = 0
  best_buying_selling_days = [0, 0]

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
      next
    end

    if price - min_price > best_profit
      best_profit = price - min_price
      best_buying_selling_days = [min_index, index]
    end
  end

  best_buying_selling_days
end

p stock_picker([17,1,6,9,15,8,6,1,10])