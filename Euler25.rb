num = Array.new(3)
num[0] = 1
num[1] = 1
num[2] = 2
i = 0
while true
  num[(i + 2) % 3] = num[i % 3] + num[(i + 1) % 3]
  if num[(i + 2) % 3].to_s.length >= 1000
    break
  end
  i = i + 1
end
puts num[(i + 2) % 3]
puts num[(i + 2) % 3].to_s.length
puts i+2