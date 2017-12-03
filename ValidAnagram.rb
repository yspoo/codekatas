# Given two strings s and t, write a function to determine if t is an anagram of s.

# For example,
# s = "anagram", t = "nagaram", return true.
# s = "rat", t = "car", return false.

# Note:
# You may assume the string contains only lowercase alphabets.

# Follow up:
# What if the inputs contain unicode characters? How would you adapt your solution to such case?

def is_anagram(s, t)
    if s.each_char.sort == t.each_char.sort # comparing each character after sorting
                                            # apparently, you can use sort on a Enumerable?(I don't have to convert to an Array beforehand?)
    # if s.chars.sort == t.chars.sort works the same way.
    # chars Returns an array of characters in str. This is a shorthand for str.each_char.to_a.
      return true
    else
      return false
    end
end
