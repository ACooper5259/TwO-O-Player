require_relative "question"
require_relative "player"

question1 = Question.new("what is 2 + 3 ? ", 5)

puts question1.text
puts question1.answer

player1 = Player.new
puts player1.lives
puts player1.score
