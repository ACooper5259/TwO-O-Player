require_relative "question"
require_relative "player"
require_relative "turn"

player1 = Player.new("Player1", "P1")
player2 = Player.new("Player2", "P2")

question1 = Question.new("what is 2 + 3 ? ", "5")
question2 = Question.new("what is 5 plus 3", "8")
question3 = Question.new("what is 23 plus 10", 33)
question4 = Question.new("what is 30 plus 25", 55)
question5 = Question.new("what is 28 plus 17", 45)
question6 = Question.new("what is 36 plus 28", 64)
question7 = Question.new("what is 25 plus 25", 50)
question8 = Question.new("what is 14 plus 16", 30)
question9 = Question.new("what is 85 plus 25", 110)
question10 = Question.new("what is 92 plus 18", 110)

turn1 = Turn.new
turn1.askQuestion(player1.name, question1.text)
user_answer1 = gets.chomp
if question1.check_answer(user_answer1)
  player1.scoreUp()
else
  player1.lifeDown()
end
puts "#{player1.nickname} #{player1.score}/#{player1.lives} vs #{player2.nickname} #{player2.score}/#{player2.lives}"

