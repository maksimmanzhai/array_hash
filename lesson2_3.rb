# frozen_string_literal: true

array = [1, 1]

loop do
  break if (array[-1] + array[-2]) > 100

  array.push(array[-1] + array[-2])
end
