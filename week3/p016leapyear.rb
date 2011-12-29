def leap_year?(year)
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

puts "Enter a year:"
STDOUT.flush
year = gets.chomp.to_i
puts leap_year?(year)? "Leap year" : "Not leap year"