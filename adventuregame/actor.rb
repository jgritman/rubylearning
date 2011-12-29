class Actor < Thing
  def initialize(name,description,position)
    super(name,description)
    @position = position
  end
  
  attr_accessor :position
end