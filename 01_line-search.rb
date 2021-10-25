# line search
# retornar o ÍNDICE correspondente ao elementro existente no array
def search(arr, x) 
    for i in 0..arr.count do 
        if ( arr[i] == x )
            return i
        end
    end
    return -1
end

arr = [2, 3, 4, 10, 40]
x = 10

result = search(arr, x)

if ( result == -1 )
    puts "O elemento não está presente no array."
else
    puts "O elemento está presente no índice #{result}"
end