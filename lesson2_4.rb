# frozen_string_literal: true

hash = {}
index = 1
('a'..'z').each do |letter|
  hash[letter] = index if (letter.count 'aeiouy') == 1
  index += 1
end

