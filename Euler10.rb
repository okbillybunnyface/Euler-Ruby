def prime_sum(input)
  n = 7
  count = 3
  sum = 10
  while n < input
    prime = true
    for i in 3..Math.sqrt(n)
      if n % i == 0
        prime = false
        break
      end
    end

    if prime
      count = count + 1
      sum = sum + n
    end

    n = n + 2
  end

  return sum
end