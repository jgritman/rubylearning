class Game
  def initialize (rooms, player)
    @map = Map.new(rooms)
    @player = player
  end
  
  attr_reader :map
end