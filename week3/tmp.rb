s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
s.lines.with_index {|x, i| print "Line #{i+1}: #{x}"}
