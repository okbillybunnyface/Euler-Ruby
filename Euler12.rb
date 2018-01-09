def factors(n)
  factors = Array.new
  factors.push 1
  for i in 2..n/2
    if n % i == 0
      factors.push i
    end
  end
  factors.push n

  return factors
end

num = 1
tri_num = num

while true
  if factors(tri_num).count > 500
    break
  end

  num = num + 1
  tri_num = tri_num + num
end

puts tri_num
