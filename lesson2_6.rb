# frozen_string_literal: true

order = {}

loop do
  puts 'Enter your product'
  product = gets.chomp.to_s
  break if product == 'stop'

  puts 'Enter price of product'
  price = gets.chomp.to_f
  puts 'Enter count of product'
  count = gets.chomp.to_f
  order[product] = [price, count]
end

puts 'total for each product'
summary = 0
order.each do |key, value|
  total = value[0] * value[1]
  summary += total
  puts "#{key}: #{total}"
end

puts "total for all products: #{summary}"
