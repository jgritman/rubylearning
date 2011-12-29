YEAR_RANGE = (1930..1950).to_a

while (true)
  puts "Say something to grandma:"
  STDOUT.flush
  text = gets.chomp
  exit if text == 'BYE'
  if text == text.upcase 
    puts "NOT SINCE #{YEAR_RANGE[rand(YEAR_RANGE.size)]}"
  else 
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end