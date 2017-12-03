# Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

def contains_duplicate(nums=[])
  if nums.uniq.length != nums.length
    return true
  else
    return false
  end
end
# nums=[] is to make sure that the argument passed into contains_duplicate method is an Array. i.e contains_duplicate([1,1,1,2,3]) will work whereas contains_duplicate(1,1,1,2,3) will result in an error.

def contains_duplicate(nums=[])
  hash = {} # hash = Hash.new will also work
  nums.each do |num|
    return true if hash[num] == num # compare the "num" that we are iterating to the value of the "num" key which will contain a value identical to num.
    hash[num] = num # Assigning "num" as a value to the key(which we are creating in this line of code and naming it "num" as well).
  end
  false # in Ruby, there is an implicit return for the last line of code; so we can omit return and just write false.
end
