def fibs(n)
  array = []
  previous_num = 0
  next_num = 1
  current_num = 1
  (n).times do 
    array.push(current_num)
    current_num = previous_num + next_num 
    previous_num = next_num
    next_num = current_num
  end 
  p array
end

def fibs_rec(n)
  (n < 2)? (return n) : (fibs_rec(n - 1) + fibs_rec(n - 2))
end

fibs(20)
p fibs_rec(20)