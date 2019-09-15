# frozen_string_literal: true

array = Array.new(2, 1)
index = 0

loop do
  break if (array[index] + array[index + 1]) > 100

  array.push(array[index] + array[index + 1])
  index += 1
end

