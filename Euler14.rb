load 'Collatz.rb'

biglength = 0
bignum = 0
for i in 1..1e6-1
  chain = collatz(i)
  if chain.count > biglength
    biglength = chain.count
    bignum = i
  end
end

puts bignum