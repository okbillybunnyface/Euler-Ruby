sq_su = 0
su_sq = 0
for i in 1..100
  su_sq = su_sq + i**2
  sq_su = sq_su + i    
end
sq_su = sq_su**2

puts su_sq - sq_su