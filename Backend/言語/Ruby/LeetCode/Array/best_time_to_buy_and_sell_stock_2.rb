# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  prices.each_with_index do |price, i|
    profit += prices[i + 1] - price if prices[i + 1] && price < prices[i + 1]
  end
  profit
end

def max_profit_answer(prices)
  s = 0
  prices.each_cons(2) { |a, b| b > a && s += b - a }
  s
end
