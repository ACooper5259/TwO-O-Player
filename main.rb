require_relative "question"
require_relative "player"
require_relative "turn"

player1 = Player.new("Player1", "P1")
player2 = Player.new("Player2", "P2")

turn1 = Turn.new
turn1.askQuestion(player1.name, turn1.createQuestion())
user_answer1 = gets.chomp
question1 = Question.new(turn1.num1, turn1.num2)

if question1.check_answer(user_answer1)
  player1.scoreUp()
else
  player1.lifeDown()
end
puts "#{player1.nickname} #{player1.score}/#{player1.lives} vs #{player2.nickname} #{player2.score}/#{player2.lives}"

turn2=Turn.new
turn2.askQuestion(player2.name, turn2.createQuestion())
user_answer2 = gets.chomp
question2 = Question.new(turn2.num1, turn2.num2)
if question2.check_answer(user_answer2)
  player2.scoreUp()
else
  player2.lifeDown()
end
puts "#{player1.nickname} #{player1.score}/#{player1.lives} vs #{player2.nickname} #{player2.score}/#{player2.lives}"
