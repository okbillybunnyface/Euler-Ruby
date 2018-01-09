a = 0
b = 0
c = 0
num = 0
for b in 2..498
  for a in 1..(b - 1)
    c = a**2 + b**2
    c = Math.sqrt(c)
    num = a + b + c
    if num >= 1000 then break end
  end
  if num == 1000 then break end
end

puts a
puts b
puts c
puts a+b+c
puts a*b*c