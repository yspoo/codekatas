# Given an array of integers, every element appears twice except for one. Find that single one.

# Note:
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

def single_number(nums)
  nums.detect { |num| nums.count(num) == 1 }
end

def single_number(nums)
  nums.reduce(&:^)
  # https://stackoverflow.com/questions/40824161/how-does-using-arrayreduce-in-this-way-work for more information
  # http://www.brianstorti.com/understanding-ruby-idiom-map-with-symbol/
  # https://stackoverflow.com/questions/1089987/algorithm-to-find-a-number-which-occurs-only-once-in-an-array-given-all-the-oth
end
