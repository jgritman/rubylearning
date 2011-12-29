collection = [12, 23, 456, 123, 4579]
collection.each do |num|
  puts "#{num} is #{num % 2 == 0 ? 'even' : 'odd'}"
end