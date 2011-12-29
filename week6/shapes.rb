class Shape
  attr_reader :sound
  
  def rotate
    do_rotate
    puts "Playing sound #{sound}"
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
    @sound = 'Circle sound'
  end
  
  def do_rotate
    puts 'Circle rotate'
  end
end

class Triangle < Shape
  def initialize 
    @sound = 'Triangle sound'
  end
  
  def do_rotate
    puts 'Triangle rotate'
  end
end

circle = Circle.new 2 
circle.rotate

triangle = Triangle.new
triangle.rotate