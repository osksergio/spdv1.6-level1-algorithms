def countSort(arr)
  output = [0 for i in (0...(arr.count - 1))]

  count = [0 for i in (256)]

  ans = ["" for _ in arr]

  for i in arr
    count[ord(i)] += 1
  end

  for i in (0..(arr.count - 1))
    output[count[ord(arr[i])] - 1] = arr[i]
    count[ord(arr[i])] -= 1
  end

  for i in (0...(arr.count - 1))
    ans[i] = output[i]
  end

  return ans
end