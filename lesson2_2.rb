# frozen_string_literal: true

array = []
(10..100).each do |index|
  array.push(index) if (index % 5).zero?
end

