class Question
  attr_reader :num1, :num2, :answer
  
  def initialize(num1, num2)
   @num1 = num1
   @num2 = num2
   @answer = (num1 + num2).to_s
  end

  
  def check_answer(user_answer)
    if user_answer == @answer
      return true
    end
  end

end
    