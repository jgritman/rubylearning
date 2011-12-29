require 'lesson8exercise1'

obj = Klass.new("hello")

filename = 'dump'

File.open(filename, 'w+') { |f|  Marshal.dump(obj,f )}

newobj = nil
File.open(filename) {|f| newobj = Marshal.load(f)}

newobj.say_hello