class Hangman
  attr_accessor :name

def initialize
  @x = 0
  @letters = []

end

def intro
  puts "welcome to hangman!  Player 1 enter your name"
  @player1 = gets.chomp.downcase
  puts "Player 2 enter your name"
  @player2 = gets.chomp.downcase
  puts "get ready to play #{@player1} and #{@player2}"
  word
end

def word
  puts "#{@player1} please enter your word"
  word = gets.chomp.downcase
  @answer = word.split("")
  #how do you get the @answer to be hidden in the terminal?
  guess
end

def guess
  @gallow = ["head", "body", "left arm", "right arm", "left leg", "right leg"]
  man = @gallow[@x]
  puts "#{@player2}, please guess a letter"
  letter= gets.chomp.downcase
  @letters << letter

  if @answer.include?(letter) == false

   puts  "oh no :( you have added a " + man + " to your hangman!"

    @x += 1
    if man == "right leg"
      puts "that was your last turn, you lose"
    else
    guess
  end
  else
    puts "you guessed a letter correctly! here is your word so far:" + @letters.join

    guess
  end
end

#put correct guess in a new method so that you can run a while loop

end

hangman = Hangman.new
hangman.intro
