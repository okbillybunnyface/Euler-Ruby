def Math.factorial(n)
  answer = n
  for i in 2..n-1
    answer = answer * i
  end
  return answer
end

def permutations(input)
  input = input.split(//)
  output = Array.new(1, input[0])
  for i in 1..input.count-1
    temp = Array.new
    for j in 0..output.count-1
      temp.concat(merge(output[j], input[i]))
    end
    output = temp
  end
  return output
end


#a = input string; b = input char to be inserted into a
def merge(a, b)
  output = Array.new(a.length+1)
  for i in 0..a.length
    output[i] = a.dup
    output[i].insert(i, b)
  end
  return output
end
