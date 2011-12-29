class Person
  def initialize(balance)
    @balance = balance
  end
  
  def show_bal
    @balance
  end
end

p = Person.new(40000)
puts p.show_bal # calling the method