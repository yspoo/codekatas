# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

# You may assume that the array is non-empty and the majority element always exist in the array.

def majority_element(nums)
  hash = Hash.new(0)  # There will be a default value of 0 for keys which doesn't exist.
  # Hash.new(<value>) Returns a new, empty hash. If this hash is subsequently accessed by a key that doesn't correspond to a hash entry, the value returned depends on the style of new used to create the hash.
  # In the first form, i.e Hash.new(), the access returns nil.
  # If obj is specified, i.e Hash.new(<value>), this single object(value) will be used for all default values.
  # If a block is specified, i.e Hash.new( |hash, key| hash[key] = "Go Fish: #{key}!" ), it will be called with the hash object(value) and the key, and should return the default value. It is the block's responsibility to store the value in the hash if required.
  limit = nums.length/2
  nums.each do |num|
      hash[num] = ( hash[num] || hash[nonexistentkey]) + 1  # If the key num(a digit) already exists in hash, use its value and add 1 to it; otherwise we check for the key called nonexistentkey. Since there will never be a key called nonexistentkey(placeholder name) in hash, the default value of the hash (0) is returned and we add 1 to it and then assign it as the value to the key called num(a digit) that we created.
      # num is the digit that we're iterating through in the array nums.
      return num if hash[num] > limit # return the NUMBER not the value! (i.e num NOT hash[num])
  end
end

def majority_element(nums)
  hash = {} # if we just use an empty Hash (hash = Hash.new)
  limit = nums.size/2
  nums.each do |num|
    hash[num] = ( hash[num] || 0 ) + 1  # what comes after the pipe || character will have to changed to 0.
    return num if hash[num] > limit
  end
end

def majority_element(nums)
  hash = Hash.new(0)
  nums.each do |num|
    hash[num] += 1  # If the key num doesn't exist, we create a key that is num and assign 1 to it. If it exists, we just add 1 to its value.
  end
  max_value = hash.values.max
  # max_value is the value that is the highest in the hash. (Note: it isn't refering to the key which has the highest value, which is what we want.))
  # .values Returns a new array populated with the values from hsh.
  # .max Returns the object in ary with the maximum value. The first form assumes all objects implement Comparable; the second uses the block to return a <=> b.
  return hash.key(max_value)
  # Finding the key through the maximum value.
  # .key Returns the key of an occurrence of a given value. If the value is not found, returns nil.
end

# The following methods doesn't get passed in LeetCode but still work in other compilers.
def majority_element (nums)
#code to detect whether there are duplicates in array. More than half the length of array = maj element.
nums.detect{|i| nums.count(i)> nums.length/2}
end

def majority_element(nums)
  nums.max_by { |num| nums.count(num) }
end
