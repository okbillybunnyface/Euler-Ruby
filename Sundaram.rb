def sundaram_sieve(n)
  n = n - 2
  n = n / 2
  starttime = Time.now

  composite_list = Array(1..n)
  marked_list = Array.new(n, true)
  count = n
  for i in (1..n).to_a.reverse
    for j in (1..i)
      index = i + j + (2 * i * j) - 1
      if marked_list[index]
        count = count - 1
        marked_list[index] = false
      end
    end
  end

  middletime = Time.now

  puts (middletime.to_f - starttime.to_f).to_s + 's'

  prime_list = Array.new(count)
  index = 0
  for i in 0..marked_list.count-1
    if marked_list[i]

      prime_list[index] = (2 * composite_list[i] + 1)
      index = index + 1
    end
  end

  endtime = Time.now

  puts (endtime.to_f - middletime.to_f).to_s + 's'

  return prime_list
end