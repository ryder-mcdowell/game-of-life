class Cell

  attr_accessor :neighbors

  def initialize(alive: true)
    @alive = alive
    @neighbors = []
  end

  def alive?
    @alive
  end

  def die
    @alive = false
  end

  def tick
    neighbors_alive = @neighbors.each { |neighbor| neighbor.alive? }.count(true)
    if neighbors_alive < 2
      self.die
    end
  end

end
