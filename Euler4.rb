largest = 0

for i in 100..999
  for j in 100..999
    num = i * j
    num_s = num.to_s
    if num_s ==  num_s.reverse
      if num > largest
        largest = num
      end
    end
  end
end

puts largest
