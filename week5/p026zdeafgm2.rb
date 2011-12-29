YEAR_RANGE = (1930..1950).to_a

class Grandma
  def initialize
    @bye_count = 1
  end
   
  def listen
    while (true)
      puts "Say something to grandma:"
      STDOUT.flush
      text = gets.chomp
      
      if text == 'BYE'
        @bye_count += 1
        exit if @bye_count == 3
      else
        @bye_count = 0
        if text == text.upcase 
          puts "NOT SINCE #{YEAR_RANGE[rand(YEAR_RANGE.size)]}"
        else 
          puts 'HUH?! SPEAK UP, SONNY!'
        end
      end      
    end
  end
end

g = Grandma.new
g.listen