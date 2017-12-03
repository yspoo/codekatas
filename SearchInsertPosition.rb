# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You may assume no duplicates in the array.

# Example 1:
#
# Input: [1,3,5,6], 5
# Output: 2
#
# Example 2:
#
# Input: [1,3,5,6], 2
# Output: 1
#
# Example 3:
#
# Input: [1,3,5,6], 7
# Output: 4
#
# Example 1:
#
# Input: [1,3,5,6], 0
# Output: 0

# Method 1
def search_insert(nums, target)
  nums.count { |num| target > num }
end

# Method 2
def search_insert(nums, target)
  return 0 if nums.empty?
  return 0 if nums.first >= target
  left  = 0
  right = nums.length - 1
  middle = (left + right) / 2
  while left < right
    flag, ret = valid?(nums, target, middle)
    return ret if flag
    if target > nums[middle]
      left = middle + 1
    else
      right = middle - 1
    end
    middle = (left + right) / 2
  end
  flag, ret = valid?(nums, target, middle)
  return ret if flag
  -1
end

def valid? nums, target, index
  return [true, index] if nums[index] == target
  return false if nums[index] > target
  return [true, index + 1] if index == nums.length - 1

  if nums[index + 1] > target
    [true, index + 1]
  else
    false
  end
end

# Method 3
def search_insert(nums, target)
  (0...nums.size).bsearch { |index| nums[index] >= target } || nums.size  # use ... to exclude end value of range. || nums.size because we want to return nums.size if search result is nil.
end
