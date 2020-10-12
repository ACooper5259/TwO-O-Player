class Turn
  attr_accessor :num1, :num2
  def initialize
    self.num1 = rand(20)
    self.num2 = rand (20)
  end

  def createQuestion
    text = "What is #{num1} plus #{num2}?"
  end

  def askQuestion(player, question)
    puts "#{player}: #{question}"
  end

end