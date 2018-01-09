tri = File.open('Euler67.txt').read
tri = tri.split("\n")
for i in 0..tri.count-1
  tri[i] = tri[i].split(" ")
  for j in 0..tri[i].count-1
    tri[i][j] = tri[i][j].to_i
  end
end

for i in (0..tri.count-2).to_a.reverse
  for j in (0..tri[i].count-1)
    tri[i][j] = tri[i][j] + (tri[i + 1][j] > tri[i + 1][j+1] ? tri[i + 1][j] : tri[i + 1][j+1])
  end
end

puts tri[0][0]