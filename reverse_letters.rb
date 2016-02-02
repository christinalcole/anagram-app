def reverse_letters(arr)


# Creates new array of same length as original array
length = arr.length
reversed_arr = Array.new(length)


# Loops through original array and adds to new array, keeping index 
arr.each_with_index do |letter, idx|
  reversed_arr[length - idx -1 ] = letter 
end

reversed_arr

end