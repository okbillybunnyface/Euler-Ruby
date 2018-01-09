def sqr_digit_chains(n)
  one = 0
  eightynine = 0
  solutions = Array.new(n)
  for i in 1..n
    num = i
    while true
      if(solutions[num] != nil)
        num = solutions[num]
      end

      if num == 89
        solutions[i] = 89
        eightynine = eightynine + 1
        break
      elsif num == 1
        solutions[i] = 1
        one = one + 1
        break
      end
          
      digits = num.to_s.split(//)
      num = 0
      for j in 0..digits.count-1
        num = num + digits[j].to_i**2
      end
    end
  end

  puts '89s: ' + eightynine.to_s
  puts '1s: ' + one.to_s
end
