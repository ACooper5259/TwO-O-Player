require_relative "question"
require_relative "player"
require_relative "turn"

player1 = Player.new("Player1", "P1")
player2 = Player.new("Player2", "P2")

# turn 1
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

# turn 2
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

# turn 3
turn3 = Turn.new
turn3.askQuestion(player1.name, turn1.createQuestion())
user_answer3 = gets.chomp
question3 = Question.new(turn3.num1, turn3.num2)
if question3.check_answer(user_answer3)
  player1.scoreUp()
else
  player1.lifeDown()
end
puts "#{player1.nickname} #{player1.score}/#{player1.lives} vs #{player2.nickname} #{player2.score}/#{player2.lives}"
if player1.lives == 0 
  puts "#{player2.name} wins with a score of #{player2.score}/#{player2.lives}"
elsif player2.lives == 0
  puts "#{player1.name} wins with a score of #{player1.score}/#{player1.lives}"
else
  puts "#{player1.nickname} #{player1.score}/#{player1.lives} vs #{player2.nickname} #{player2.score}/#{player2.lives}"
end

# turn 4
turn4 = Turn.new
turn4.askQuestion(player2.name, turn4.createQuestion())
user_answer4 = gets.chomp
question4 = Question.new(turn4.num1, turn4.num2)
if question4.check_answer(user_answer4)
  player2.scoreUp()
else
  player2.lifeDown()
end
puts "#{player1.nickname} #{player1.score}/#{player1.lives} vs #{player2.nickname} #{player2.score}/#{player2.lives}"
if player1.lives == 0 
  puts "#{player2.name} wins with a score of #{player2.score}/#{player2.lives}"
elsif player2.lives == 0
  puts "#{player1.name} wins with a score of #{player1.score}/#{player1.lives}"
else
  puts "#{player1.nickname} #{player1.score}/#{player1.lives} vs #{player2.nickname} #{player2.score}/#{player2.lives}"
end
