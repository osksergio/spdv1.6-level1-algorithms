# frozen_string_literal: true

# line search
# retornar o ELEMENTO existente ou não no array
def search(arr, x)
  arr.each do |i|
    return i if i == x
  end
  -1
end

arr = [2, 3, 4, 10, 40]
x = 10

result = search(arr, x)

if result == -1
  puts 'O elemento não está presente no array.'
else
  puts "O elemento #{result} está presente no array."
end
