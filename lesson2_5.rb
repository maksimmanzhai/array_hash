# frozen_string_literal: true

def leap?(year)
  if (year % 4 != 0) || (year % 100 == 0) && (year % 400 != 0)
    return false
  else
    return true
  end
end

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

date = []
puts 'Enter your year'
year = gets.chomp.to_i
puts 'Enter your month (1-12)'
month = gets.chomp.to_i

if month >= 1 && month <= 12
  date.push(month)
  puts 'Enter your day (1-31)'
  day = gets.chomp.to_i
  if day >= 1 && day <= days[month - 1]
    date.push(day)
  else
    puts 'Your day is wrong'
  end
else
  puts 'Your month is wrong'
end

if date.size == 2
  days[1] = 29 if leap?(year)
  count_of_day = days.take(date[0] - 1).sum + date[1]
  puts "This day is #{count_of_day}"
end
