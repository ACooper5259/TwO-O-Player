class Player
  attr_accessor :name, :lives, :score, :nickname

  def initialize(name, nickname)
    self.name = name
    self.nickname = nickname
    self.lives = 3
    self.score = 0
  end
  def scoreUp
    @score += 1
    puts "#{name}: YES! You are correct"
  end
  def lifeDown
    @lives -= 1
    puts "#{name}: Seriously? No, you are not correct!"
  end
  
end