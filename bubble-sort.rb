# Ruby program for implementation of Bubble Sort
def bubbleSort(arr)
  n = arr.count

  range = 0..(n - 1)

  for i in range
    for j in (0..((n - 1) - i - 1))
      if (arr[j] > arr[j+1])
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end
end

arr1 = [64, 34, 25, 12, 22, 11, 90]

bubbleSort(arr1)

puts "Sorted array is: "

for i in (0..arr1.count - 1)
  puts (arr1[i])
end