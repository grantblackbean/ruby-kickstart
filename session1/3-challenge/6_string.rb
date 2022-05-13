# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  size = string.size
  arr = []
  size.times do |s|
    if return_odds
      if s.odd?
        arr << string[s]
      end
    else
      if s.even?
        arr << string[s]
      end 
    end
  end
  puts arr.join("")
  return arr.join("")
end
odds_and_evens("abcdefg", true)