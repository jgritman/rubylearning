(1..100).each do |num|
  print "Fizz" if num % 3 == 0  
  print "Buzz" if num % 5 == 0 
  print "#{num}" if num % 3 != 0 && num % 5 != 0
  print " "
end