class Implementer
  def initialize(player)
    @player = player
    @r0 = Room.new
    r1
    @game = new Game(@player)
  end
  
  def move_actor_to
end