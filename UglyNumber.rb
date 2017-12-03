#  Write a program to check whether a given number is an ugly number. 
#  Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
#  Note that 1 is typically treated as an ugly number.

def is_ugly(num)
    if num > 0  # ensure positive numbers
      [2,3,5].each { |ugly_factor| num /= ugly_factor while num % ugly_factor == 0}
    end
    num == 1  # return true or false
end

def is_ugly(num)
    return false if num <= 0  # It must be an "<=" sign and not "<" otherwise the test will not be passed.
    [2,3,5].each do |ugly_factor| num /= ugly_factor while num % ugly_factor == 0 end
    return num == 1
end

def is_ugly(num)
  [2,3,5].each { |ugly_factor| num /= ugly_factor while num % ugly_factor == 0} if num > 0
  num == 1
end
