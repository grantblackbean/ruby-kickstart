# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Can't we all get along?")  # => ["Elementary", "dear"]

def alternate_words(str)
  the_str = str.gsub(/[^a-zA-Z'’]/, " ")
  arr = the_str.split(" ")
  alternates = []
  z = 0
  while z <= arr.length
    if arr[z] != ""
      alternates << arr[z]
    end
    z += 2
  end
  return alternates.compact
end

alternate_words("Elementary, my dear Watson!")
alternate_words("Lorem ipsum dolor sit amet.")