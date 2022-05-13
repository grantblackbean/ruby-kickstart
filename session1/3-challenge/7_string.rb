# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  arr = []
  string.scan(/r/i).length.times do
    i = string.index(/r/i) + 1
    puts string[i]
    arr << string[i]
    string.slice!(i - 1)
  end
  return arr.join("")
end


pirates_say_arrrrrrrrr("are you really learning Ruby?")