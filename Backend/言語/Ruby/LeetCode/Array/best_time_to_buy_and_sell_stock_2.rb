# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  day_to_buy = 0
  while day_to_buy < prices.length - 1
    day_to_sell = prices.index {|price| price > prices[day_to_buy]}
    if day_to_sell && day_to_sell > day_to_buy
      if prices[day_to_buy+1...day_to_sell].index {|price| price < prices[day_to_buy]}
        day_to_buy = prices[day_to_buy+1...day_to_sell].index {|price| price < prices[day_to_buy]} + day_to_buy + 1
      else
        profit += prices[day_to_sell] - prices[day_to_buy]
        day_to_buy = day_to_sell
      end
    else
      day_to_buy += 1
    end
  end
  profit
end
