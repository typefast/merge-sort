def merge_sort(array)
  return array if array.length == 1 # base case
  middle = array.length / 2 # split the array in half
  
  left = array[0..middle-1] 
  right = array[middle..-1]
  
  left_side = merge_sort(left) # recursive split of array
  right_side = merge_sort(right) # recursive split of right side
  
  merge(left_side, right_side) # merge the split arrays
end

def merge(left, right)
  result = []
  i = 0 
  j = 0
  while i < left.length && j < right.length 
    if left[i] < right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end
  if i < left.length
    result += left[i..-1]
  elsif j < right.length
    result += right[j..-1]
  end
  result
end

values = [1,7,3,8,2,5,25,15]
puts merge_sort(values)