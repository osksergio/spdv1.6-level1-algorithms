# frozen_string_literal: true

# Ruby program for implementation of Bubble Sort
def bubbleSort(arr)
  n = arr.count

  range = 0..(n - 1)

  range.each do |i|
    (0..((n - 1) - i - 1)).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
end

arr1 = [64, 34, 25, 12, 22, 11, 90]

bubbleSort(arr1)

puts 'Sorted array is: '

(0..arr1.count - 1).each do |i|
  puts(arr1[i])
end
