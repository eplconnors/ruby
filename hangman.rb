class Hangman
  attr_accessor :name



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
  @x = 0
  @gallow = ["head", "body", "left arm", "right arm", "left leg", "right leg"]
  @letters = Array.new
  puts "#{@player2}, please guess a letter"
  letter= gets.chomp.downcase
  @letters.push letter
  
  if @answer.include?(letter) == false

   puts  "oh no :( you have added a " + @gallow[@x] + "to your hangman!"

    @x += 1
    guess

  else
    puts "you guessed a letter correctly! here is your word so far:"
    p @letters
    #how do you get the letters in an array to stay there?
    guess
  end
end

#when i can get the gallow array to work- put until == right leg, keep the loop going. else put "the game is over, you have lost"

end

hangman = Hangman.new
hangman.intro
