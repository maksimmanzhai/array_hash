# frozen_string_literal: true

hash = {}
index = 1
('a'..'z').each do |letter|
  hash[letter] = index if 'aeiouy'.include? letter
  index += 1
end
