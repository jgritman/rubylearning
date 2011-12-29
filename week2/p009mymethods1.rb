# p009mymethods1.rb
# interpolation refers to the process of inserting the result of an
# expression into a string literal
# the interpolation operator #{...} gets calculated sepeately
def mtd(arg1="Arg1", arg2="Arg2",arg3="Arg3")
   "#{arg1} #{arg2} #{arg3}"
end 
puts mtd
puts mtd("ruby ")