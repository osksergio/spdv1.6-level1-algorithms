# Ruby code to implement Jump Search
def jumpSearch(arr, x , n)
  # Finding block size to be jumped
  step = Math.sqrt(n)

  # Finding the block where element is
  # present (if it is present)
  prev = 0
  while arr[int(min(step, n) - 1)] < x
    prev = step
    step += Math.sqrt(n)
    if prev >= n then
      return -1
    end
  end

  # Doing a linear search for x in
  # block beginning with prev.
  while arr[int(prev)] < x do
    prev += 1

    # If we reached next block or end
    # of array, element is not present.
    if prev == min(step, n) then
      return -1
    end

    # If element is found
    if arr[int(prev)] == x then
      return prev
    end
  end
end

#Driver code to test function
arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21,
    34, 55, 89, 144, 233, 377, 610 ]
x = 55
n = arr.length()
 
# Find the index of 'x' using Jump Search
index = jumpSearch(arr, x, n)
 
# Print the index where 'x' is located
print("Number" , x, "is at index" ,"%.0f"%index)
 
# This code is contributed by "Sharad_Bhardwaj".