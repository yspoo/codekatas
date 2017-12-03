# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

# If we take array = [0, 1, 0 , 3, 12],
def move_zeroes(array)
    num_of_zeros = array.count(0) # This step of assigning array.count(0) to a variable is necessary to reduce the time taken to evaluate the kata because LeetCode compiler doesn't have to evaluate array.count(0) again inside the loop; it can simply use the variable that is stored in memory. This is important because LeetCode imposes a time constraint on every kata.
    (0...array.count).each { |position|   # (0..array.count-1) does the same as (0...array.count). triple dots for range operator means excluding the end value; double dots include the end value.
        break if position == array.count - num_of_zeros # Because there're 2 zeroes, if all of them have been deleted and pushed to the end of the array, then the 1st zero will be at position number 3(index starts at 0). Therefore, once we reached that position, we can stop and break from the loop.
        while array[position] == 0
            array.delete_at(position) # delete the number at that position from the array. delete_at() only accepts an index as argument.
            array.push(0) # push to the end of the array.
        end
    }
    return array
end

def move_zeroes(arry)
  number_of_zeros = arry.select { |num| num == 0 } # select Returns a new array containing all elements of ary for which the given block returns a true value. If no block is given, an Enumerator is returned instead.
  arry.delete(0) { puts "Please ensure that there is/are zero(s) in the array!" }
  arry.concat(number_of_zeros)  # concat Appends the elements of +other_ary+s to self.
=begin
a = [ 1, 2, 3 ]
a.concat( [ 4, 5 ] )
a                                 #=> [ 1, 2, 3, 4, 5 ]

a = [ 1, 2 ]
a.concat(a, a)                    #=> [1, 2, 1, 2, 1, 2]
=end
end

def move_zeroes(arry)
  if arry.include?(0)
    zeroes = arry.select {|num| num == 0}
    non_zero = arry.reject {|num| num == 0}
    non_zero + zeroes # array concatenation (like string concatenation) Note: LeetCode does not accept this line of code for some strange reason and therefore this solution will not be accepted. However, if you try it out on other compiler like irb or repl.it, the solution works.
  end
  return arry
end
