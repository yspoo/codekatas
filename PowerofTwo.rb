# Given an integer, write a function to determine if it is a power of two.
def is_power_of_two(n)
    while n >= 2.0 do
        n /= 2.0
    end
    return n == 1.0
end
