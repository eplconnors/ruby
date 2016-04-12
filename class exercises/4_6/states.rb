puts "What states have you visited?"
states = []
input = ''

until input == 'Done'
  input = gets.chomp.capitalize
  states<<input
end
p states







# Write a program that asks the user for all U.S. states they have visited (followed by a return). Typing "done" should terminate the program. Print all states to the screen
