def bubble_sort(arr)
    count=0
    while count < arr.length()-1
        if arr[count] > arr[count+1]
            arr[count] , arr[count+1] = arr[count+1] , arr[count]
            count=0
        else
            count+=1
        end
    end
    return arr
end

def bubble_sort_by(arr)
    count=0

    while count < arr.length()-1
        if yield(arr[count], arr[count+1]).positive?
            arr[count] , arr[count+1] = arr[count+1] , arr[count]
            count=0
        else
            count+=1
        end
    end
    return arr
end

arr = bubble_sort([1,0,5,7,8])

puts "bubble_sort [1,0,5,7,8]"
print "result: " + arr.to_s 

arr = bubble_sort_by(["hi","hello","hey"]) do | left, right|
    left.length - right.length
end

puts "\nbubble_sort_by(['hi','hello','hey'])"
print arr