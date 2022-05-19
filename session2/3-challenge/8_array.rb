# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
  n = 0
  three = 0
  arr.each do
    char1 = arr[n]
    char2 = arr[n+1]
    char3 = arr[n+2]
    if [char1,char2,char3].uniq.length == 1
      three = 1
    end
    n += 1
  end
  if three == 1
    return true
  else
    return false
  end
end 
got_three?([1, 2, 2, 2, 3])