class Deck
  def initialize
    $deck =[]
    @number = ['Ace', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,'Jack', 'Queen','King']
    @deck_suits = ['Hearts', 'Spades', 'Diamonds','Clubs']

    @number.each do |x|
      @deck_suits.each do |y|
        $deck = {x => y}
        $deck.shuffle!
      end
      end
  end

  def greeting
    puts "What's your name?"
    name = gets.chomp
    @bet = 0
    puts "welcome to blackjack! How much would you like to bet?"
    answer = gets.chomp.to_i
    @bet += answer
    @player = Player.new(name)
  end
    def run
      greeting
      dealer_deal
      if player_score == 21
        puts "player wins!"
      elsif dealer_score == 21
        puts "dealer wins! you lose"
      end
    end
end

module Deal
  def dealing
    @card = []
    Deck.new
   @card<< $deck.pop
    puts "you have been dealt the #{@card}"
  end
end

class Player
  include Deal
  attr_accessor :name
  def initialize(name)
    @hand = []
    @name = name
    @score = []
    player_deal
  end
  def total
    p @card
    @score = []
    if @card.include? 'King'
      @score<< 10
    elsif @card.include? 'Ace'
      @score<< 11
    else
      @score<<@card.each {|x| x.each {|k,v| a}}
  end
end
  def player_deal
    2.times do
      dealing
    end
    total
    # @hand<<@card
      p @score.flatten!
        if @score.reduce(:+) == 21
      puts "you have reached 21! you win!"
    elsif @score.reduce(:+) <= 21
      puts "would you like to hit or stand?"
      answer = gets.chomp
      if answer == "hit"
        player_hit
      elsif answer == "stand"
        puts "Your score is #{@score}"
      else
        puts "please write hit or stand"
      end
    end
  end

  def player_hit
    total
    if @score == 21
      puts "you have reached 21! you win!"
    elsif @score < 21
      puts "would you like to hit or stand?"
      answer = gets.chomp
      if answer == 'hit'
        player_hit
      elsif answer == 'stand'
        puts "Your score is #{@score}"
      else
        puts "please write hit or stand"
      end
    end
  end

  def player_score
    @score
  end
end

class Dealer
  include Deal
  def initialize
  @hand = []
  @score = []
  end

  def dealer_deal
    total
    @hand<<@card
    if @score == 21
      puts "Dealer has reached 21- you lose!"
    elsif @score <= 11
      puts "dealer hits"
      Deal
    elsif @score >= 12
      puts "dealer stands, score is equal to #{@score}."
    end
  end

  def dealer_score
    @score
  end

end

mydeck=Deck.new
dealer=Dealer.new
mydeck.run
