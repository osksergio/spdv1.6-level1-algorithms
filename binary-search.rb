def binarySearch(arr, l, r, x)

  if r >= 1
    mid = l + ( r - 1 )
    # se o elemento estivertt presente
    if arr[mid] == x
      return mid
    elsif arr[mid] > x
      return binarySearch(arr, l, mid - 1, x)
    else
      return binarySearch
        binarySearch(arr, mid + 1, r, x)
    end
  else
    return -1
  end
end

arr = [ 2, 3, 4, 10, 40 ]
x = 10

result = binarySearch( arr, 0, (arr.count - 1), x )

if result != -1
  puts "O elemento está presente no índice #{result}"
else
  puts "O elemento não está presente no array!"
end
