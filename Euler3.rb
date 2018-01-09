def least_prime_multiple(input)
  for i in 2..Math.sqrt(input)
    if input % i == 0
      return i
    end
  end
  return input
end


def prime(input)
  for i in 2..Math.sqrt(input)
    if input%i == 0
      return false
    end
  end
  return true
end

num = 600851475143

factors = Array.new

until prime(num)
  factor = least_prime_multiple(num)
  factors.push factor
  num = num / factor
end
factors.push num
puts factors
