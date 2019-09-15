# frozen_string_literal: true

def leap?(year)
  if (year % 4).zero?
    if (year % 100).zero?
      if (year % 400).zero?
        return true
      else
        return false
      end
    else
      return true
    end
  else
    return false
  end
end

months = {
  1 => 31,
  2 => 28,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31
}

date = []
puts 'Enter your year'
year = gets.chomp.to_i
puts 'Enter your month (1-12)'
month = gets.chomp.to_i

if month >= 1 && month <= 12
  date.push(month)
  puts 'Enter your day (1-31)'
  day = gets.chomp.to_i
  if day >= 1 && day <= 31
    date.push(day)
  else
    puts 'Your day is wrong'
  end
else
  puts 'Your month is wrong'
end

if date.size == 2
  count_of_day = 0
  months.each do |month2, days|
    months[2] = 29 if leap?(year)
    count_of_day += days if month2.to_i < date[0]
  end
  count_of_day += date[1]
end

puts "This day is #{count_of_day}"
