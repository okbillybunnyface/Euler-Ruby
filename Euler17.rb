def num_to_word(num)
  output = ''

  num = num.to_i
  for i in (1..4).to_a.reverse
    if i == 4  && num >= 1000
      #puts 'THOUSANDS'
      output = output + get_ones(num.to_s[0]) + ' thousand'
      num = num - (num.to_s[0].to_i*1000)
      if num != 0
        output = output + ' '
      else
        return output
      end

    elsif i == 3 && num.to_s[0] != nil && num >= 100
      #puts 'HUNDREDS'
      output = output + get_ones(num.to_s[0]) + ' hundred'
      num = num - (num.to_s[0].to_i*100)
      if num != 0
        output = output + ' and '
      else
        return output
      end

    elsif i == 2  && num.to_s[0] != nil && num >= 10
      #puts 'TENS'
      if num.to_s[0] == '1'
        output = output + get_teens(num)
        return output
      end
      output = output + get_tens(num.to_s[0])
      num = num - (num.to_s[0].to_i*10)
      if num != 0
        output = output + ' '
      else
        return output
      end

    elsif i == 1
      #puts 'ONES'
      output = output + get_ones(num.to_s[0])
      return output
    end


  end
end

def get_tens(num)
  num = num.to_i
  out = case num
          when 2 then 'twenty'
          when 3 then 'thirty'
          when 4 then 'forty'
          when 5 then 'fifty'
          when 6 then 'sixty'
          when 7 then 'seventy'
          when 8 then 'eighty'
          when 9 then 'ninety'
        end
  return out
end

def get_teens(num)
  num = num.to_i
  out = case num
          when 10 then 'ten'
          when 11 then 'eleven'
          when 12 then 'twelve'
          when 13 then 'thirteen'
          when 14 then 'fourteen'
          when 15 then 'fifteen'
          when 16 then 'sixteen'
          when 17 then 'seventeen'
          when 18 then 'eighteen'
          when 19 then 'nineteen'
        end
  return out
end

def get_ones(num)
  num = num.to_i
  out = case num
          when 0 then ''
          when 1 then 'one'
          when 2 then 'two'
          when 3 then 'three'
          when 4 then 'four'
          when 5 then 'five'
          when 6 then 'six'
          when 7 then 'seven'
          when 8 then 'eight'
          when 9 then 'nine'
        end
  return out
end






words = ''

for i in 1..1000
  words = words + num_to_word(i) + ', '
end
puts words
words = words.gsub(/ /, "")
words = words.gsub(/,/, "")
puts words.length