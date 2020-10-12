class Question
  attr_reader :text, :answer

  def initialize(text, answer)
    @text = text
    @answer = answer
  end

  def check_answer(user_answer)
    if user_answer == @answer
      return true
    end
  end

end
    