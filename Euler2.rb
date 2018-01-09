current = 1
prev = 1
sum = 0
until current >= 4e6
  if current % 2 == 0
    sum = sum + current
  end

  temp = current
  current = current + prev
  prev = temp
end

puts sum.to_s