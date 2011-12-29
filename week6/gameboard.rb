class GameBoard
  def initialize
    @hits = []
  end
  
  def set_locations_cells(locations_cells)
    @locations_cells = locations_cells
  end
  
  def check_yourself(guess)
    guess = guess.to_i
    if @locations_cells.include?(guess)
      puts 'Hit'
      @hits << guess if !@hits.include?(guess)
      if @hits.size == @locations_cells.size
        puts 'End'
        return 'kill'
      else
        return 'hit'
      end
    end
    puts 'Miss'
    return 'miss'
  end
end