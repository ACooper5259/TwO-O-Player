class Player
  attr_accessor :name, :lives, :score

  def initialize(name)
    self.name = name
    self.lives = 3
    self.score = 0
  end
  def scoreUp
    @score += 1
  end
  def lifeDown
    @life -= 1
  end

  
end