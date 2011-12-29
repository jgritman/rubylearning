class Klass
  def initialize string
    @string = string
  end
  
  def say_hello
    @string
  end
end

obj = Klass.new("hello")

puts obj.say_hello