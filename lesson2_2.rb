# frozen_string_literal: true

array = []
(10..100).each do |number|
  array.push(number) if (number % 5).zero?
end
