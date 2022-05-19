# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    arr = self.scan /./
    i = 0
    blank = []
    until i >= arr.length
      blank << arr[i]
      i += 2
    end
    puts blank.join("")
    return blank.join("")
  end
  
end

"Four score and seven years ago...".every_other_char