# Ruby program for right rotation of an array (Reversal Algorithm)
 
# Function to reverse arr from index start to end
def reverseArray(arr, start1, end1)
  while (start1 < end1)
    arr[start1], arr[end1] = arr[end1], arr[start1]
    start1 += 1
    end1 -= 1
  end
end

# Function to right rotate arr of size n by d
def rightRotate(arr, d, n)
  reverseArray(arr, 0, n -1)
  reverseArray(arr, 0, d -1)
  reverseArray(arr, d, n-1)
end

def prArray(arr, size)
  for i in 0..(size - 1)
    puts arr[i]     
  end
end

# Driver code
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
n = arr.length()
k = 3
     
# Function call
rightRotate(arr, k, n)
prArray(arr, n)