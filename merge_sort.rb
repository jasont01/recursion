#Merge Sort project
#theodinproject.com/lesons/recursion

def merge_sort(array)
  n = array.length

  return array if n < 2

  #sort left
  left = merge_sort(array[0..(n/2)-1])

  #sort right
  right = merge_sort(array[n/2..-1])

  #merge
  sorted = Array.new
  n.times do
    check_nil(left.first) <= check_nil(right.first) ? sorted.push(left.shift) : sorted.push(right.shift)
  end
  sorted
end

def check_nil(num)
  num ? num : Float::INFINITY
end


array = [4, 8, 6, 2, 1, 7, 0, 5, 3]
p merge_sort(array)

#large_array = (0..9999).to_a.sample(999)
#p merge_sort(large_array)