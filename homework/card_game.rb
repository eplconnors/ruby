deck_num = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
deck_suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
players = []
input = ''
puts 'Please enter the first name of all players.'
until input == 'Done'
  input = gets.chomp.capitalize
  players<<input
end

p states
