class Deck
  def initialize
    @deck =[]
    @number = ['Ace', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,'Jack', 'Queen','King']
    @deck_suits = ['Hearts', 'Spades', 'Diamonds','Clubs']

    @number.each do |x|
      @deck_suits.each do |y|
        @deck = [x, y]
        @deck.shuffle(0)
      end
      end
  end

  def greeting
    @bet = []
    puts "welcome to blackjack! How much would you like to bet?"
    answer = gets.chomp.to_i
    @bet<<answer
    player_deal

    def run
      greeting
      dealer_deal
      if player_score == 21
        puts "player wins!"
      elsif dealer_score == 21
        puts "dealer wins! you lose"

end

module Deal
  def dealing
    @card = []
    @deck.shuffle[0]
    @card << @deck.pop
    @card
    puts "you have been dealt the #{@card}"
  end

  def total
    @score = 0
    if @card.include? 'Jack' ||'Queen' ||'King'
      @score<< 10
    elsif @card.include ? 'Ace'
      @score<< 11
    elsif @card.keep_if {|number| >= 1}
    end
  end
end

class Player
  include Deal
  def initialize
    attr_accessor :@name
    @hand = []
    @name = name
    @score = []
  end

  def player_deal
    2.times do
      Deal
    end
    @hand<<@card
        if @score == 21
      puts "you have reached 21! you win!"
    elsif @score < 21
      puts "would you like to hit or stand?"
      answer = gets.chomp
      if answer == hit
        player_hit
      elsif == stand
        puts "Your score is #{@score}"
      else
        puts "please write hit or stand"
      end
    end
  end

  def player_hit
    Deal
    if @score == 21
      puts "you have reached 21! you win!"
    elsif @score < 21
      puts "would you like to hit or stand?"
      answer = gets.chomp
      if answer == 'hit'
        player_hit
      elsif == 'stand'
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
  @name = dealer
  @score = []
  end

  def dealer_deal
    Deal
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
player=Player.new (Emily)
dealer=Dealer.new
mydeck.run
end
