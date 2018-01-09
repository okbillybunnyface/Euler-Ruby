letters = Hash.new
letters['A'] = 1
letters['B'] = 2
letters['C'] = 3
letters['D'] = 4
letters['E'] = 5
letters['F'] = 6
letters['G'] = 7
letters['H'] = 8
letters['I'] = 9
letters['J'] = 10
letters['K'] = 11
letters['L'] = 12
letters['M'] = 13
letters['N'] = 14
letters['O'] = 15
letters['P'] = 16
letters['Q'] = 17
letters['R'] = 18
letters['S'] = 19
letters['T'] = 20
letters['U'] = 21
letters['V'] = 22
letters['W'] = 23
letters['X'] = 24
letters['Y'] = 25
letters['Z'] = 26

names = File.open('names.txt').read
names = names.delete('\"')
names = names.split(',')
names = names.sort

scores = Array.new(names.count, 0)

for i in 0..names.count - 1
  for j in 0..names[i].length - 1
    scores[i] = scores[i] + letters[names[i][j]]
  end
  scores[i] = scores[i] * (i + 1)
end

sum = 0
for i in 0..scores.count - 1
  sum = sum + scores[i]
end

puts sum