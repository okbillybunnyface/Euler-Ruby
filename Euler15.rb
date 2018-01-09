def paths(n)
  grid = (3..n+1).to_a

  for i in 1..grid.count-1
    grid[i-1] = 2 * grid[i-1]
    for j in i..grid.count-1
      grid[j] = grid[j] + grid[j-1]
    end
  end
  return 2 * grid.last
end