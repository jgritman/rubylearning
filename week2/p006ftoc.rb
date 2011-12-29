CONVERSION_DIFFERENCE = 32
CONVERSION_MULTIPLIER = 5/9.0

def convert_fahrenheit_to_celsius(degrees_fahrenheit)
    (degrees_fahrenheit - CONVERSION_DIFFERENCE) * CONVERSION_MULTIPLIER
end

puts "Enter temperature in degrees fahrenheit:"
STDOUT.flush  
degrees_fahrenheit = gets.chomp.to_f
degrees_celcius = convert_fahrenheit_to_celsius(degrees_fahrenheit)
puts (degrees_celcius * 100).round / 100.0