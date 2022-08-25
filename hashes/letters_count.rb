letters = ['a', 'b', 'c', 'd', 'b', 'a', 'c', 'b']
counts = Hash.new(0)

letters.each do |letter|
  counts[letter] += 1
end

puts counts.default
puts counts