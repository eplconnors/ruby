# Ask a user for their favorite color. If they answer with blue or green, puts "Great Choice!". If it's anything else, the program should mention the color by name and say "Really, that's your favorite color?"

puts "what is your favorite color?"
color= gets.chomp.downcase

if color== "blue" || color == "green"
  puts "Great Choice!!"

else
  puts "#{color}... Really, that is your favorite color?"

end
