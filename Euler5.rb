num = 19
trigger = false
while !trigger
  trigger = true
  for i in 1..20
    if num % i != 0
      trigger = false
    end
  end
  num = num + 19
end
num = num - 19
puts num