class Player
  attr_reader :health

  def initialize
    @health = 3
  end

  def incorrect
    @health -= 1
  end

  def lose?
    @health <= 0
  end
  
end