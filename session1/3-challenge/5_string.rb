# Given a string, replace every instance of sad to happy
# 
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
  sad_lowcase = string.scan("sad")
  sad_upcase = string.scan("Sad")
  sad_lowcase.each do
    string.sub!("sad", "happy")
  end
  sad_upcase.each do
    string.sub!("Sad", "Happy")
  end
  puts string
  return string
end

add_more_ruby("Sad, sad, sad times are ahead!")