# Say you have an array for which the ith element is the price of a given stock on day i.
#
# If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.

# Example 1:

# Input: [7, 1, 5, 3, 6, 4]
# Output: 5

# max. difference = 6-1 = 5 (not 7-1 = 6, as selling price needs to be larger than buying price)

# Example 2:

# Input: [7, 6, 4, 3, 1]
# Output: 0

# In this case, no transaction is done, i.e. max profit = 0.

# Concept: The kata requires that in order for max profit to exist, the minimum price cannot at the end of the array.

def max_profit(prices)
  return 0 if prices.length <= 1
  min_price = nil
  max_profit = 0
  prices.each do |price|
    if min_price.nil? || price < min_price
      min_price = price   # ensure that the lowest price in the array is the minimum price.
    elsif (price - min_price) > max_profit
    # "-" has a higher precedence than ">"
    # only when the condition(min_price.nil? || price < min_price) in the if block is evaluates to FALSE, then the elsif block is reached.
    # if there is a else block after elsif block, then the else block is only reached when the condition in elsif block evaluates to FALSE.
      max_profit = price - min_price
      # only when there's no new minimum price(i.e price != min_price), then the max_profit is calculated.
      # we update the max_profit only when price - min_price > max_profit
    end
  end
  max_profit
end

def max_profit(prices)
  maxprofit = 0
  minprice = prices[0]
  prices.each do |price|
    minprice = price if minprice > price
    profit = price - minprice
    maxprofit = profit if maxprofit < profit
  end
  maxprofit
end
