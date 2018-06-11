class Cell

  attr_accessor :neighbors

  def initialize
    @alive = true
    @neighbors = []
  end

  def alive?
    @alive
  end

  def die
    @alive = false
  end

  def tick

  end

end
