def bubble_sort(arr)
  count = 0
  while count < arr.length - 1
    if arr[count] > arr[count + 1]
      arr[count], arr[count + 1] = arr[count + 1], arr[count]
      count = 0
    else
      count += 1
    end
  end
  return arr
end

def bubble_sort_by(arr)
  count = 0
  while count < arr.length - 1
    if yield(arr[count], arr[count + 1]).positive?
      arr[count], arr[count + 1] = arr[count + 1], arr[count]
      count = 0
    else
      count += 1
    end
  end
end
