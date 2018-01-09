def collatz(n)
  chain = Array.new
  until n == 1
    chain.push n
    if n % 2 == 0
      n = n / 2
    else
      n = 3 * n + 1
    end
  end
  chain.push 1
  return chain
end