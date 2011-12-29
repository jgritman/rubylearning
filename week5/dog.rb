class Dog
  def initialize(name)
    @name = name
  end
  
  def bark  
    puts 'Ruff! Ruff!'  
  end
  
  def eat
    puts 'Nom Nom'
  end
  
  def chase_cat
    puts 'Ruff!  Meow!'
  end
  
end

d = Dog.new('Leo')
d.bark()
d.eat()
d.chase_cat()