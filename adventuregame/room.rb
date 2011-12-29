class Room < Thing
  def initialize(name,description,north,south,west,east)
    super(name,description)
    @north = north
    @south = south
    @west = west
    @east = east
  end
end
