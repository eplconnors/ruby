puts "guess a number between 1 and 100"
number= gets.chomp.to_i

if number == 35
  puts "Wow"

elsif number >= 30 && number <=40
  puts "So close! Try again!"

elsif number <= 29 || number >= 41
  puts "Nope!"

else
  puts "please guess a number between 1 and 100"

end
