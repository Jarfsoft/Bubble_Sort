def sort(arr)
    count=0
    while count < arr.length()-1
        if arr[count] > arr[count+1]
            arr[count] , arr[count+1] = arr[count+1] , arr[count]
            puts (arr[count].to_s + " " + arr[count+1].to_s)
            count=0
        else
            count+=1
        end
    end
    return arr
end
puts arr