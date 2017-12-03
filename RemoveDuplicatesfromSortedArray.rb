#  Given a sorted array, remove the duplicates in-place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

def remove_duplicates(array)
  array.uniq!.length
end

def remove_duplicates(integers)
  integers |= integers  # |= not ||= (there's no typo error here.)  | is a bitwise operator.
end

def remove_duplicates(integers)
  arr = []
  integers.each do |integer|
    arr << integer unless arr.include?(integer) # OR array << integer if !array.include?(integer)
  end
  return arr
end


# Note: This method only works when the duplicates are next to each other. It doesn't work when there are duplicates but not next to one another. e.g [1,2,3,4,5,4,5,6] will return 8 even though it should return 6 if the duplicates are removed.
def remove_duplicates(nums)
  size, cursor = 0, 0
  while cursor < nums.size  # iterating through each number in nums starting from the first number at index 0.
    num = nums[cursor]      # as I iterate through each number, I will assign it to a variable called "num", i.e "num" will be constantly rewritten to the value that I am currently at as I iterate through the numbers.
    cursor += 1             # so that I can iterate.
    while nums[cursor] == num # if the duplicates are next to each other
      cursor += 1           # I iterate to the next number.
    end
    nums[size] = num     # use num(which exclude the duplicates) again and assign it to nums[size] (which is the actual number). this step is just a checker so that the next step (size += 1) will be accurate, it is not actually removing the duplicates inline, i.e return nums will not give you the array without duplicates.
    size += 1            # After filtering out the duplicates, increase the counter by 1 every time we move on to another number.
  end
  return size
end


def remove_duplicates(nums)
    if nums.detect { |num| nums.count(num) > 1 }
      new_array = nums.uniq!
      return new_array.length   # return new_array if you want the array with no duplicates.
    else
      return nums.length
    end
end
