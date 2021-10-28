# Ruby program to count the uppercase,
# lowercase, special characters
# and numeric values

# function to check if an object is a number 
def isNumeric(obj)
  obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true 
end
 
# Function to count uppercase, lowercase,
# special characters and numbers
def Count(str)
  upper, lower, num, special = 0, 0, 0, 0

  for i in 0..(str.length() - 1)
  
    if str[i].downcase! then
      upper += 1
    elsif  str[i].upcase! then
      lower += 1
    elsif isNumeric(str[i]) then
      num += 1
    else
      special += 1
    end

  end

  puts "Upper case letters: #{upper}"
  puts "Lower case letters: #{lower}"
  puts "Number: #{num}"
  puts "Special characters: #{special}"
end

# Driver Code
str = "#GeeKs01fOr@gEEks07"
Count(str)