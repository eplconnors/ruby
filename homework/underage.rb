#Write a program that asks a user for their age. If they are under 21 the bouncer should tell them how many years they have left.

puts "good evening, please tell me how old you are?"

age = gets.chomp.to_i

if age >= 21
  puts "come on in! have a beer on the house!"

elsif age < 21
  puts "you have #{21 - age} years until you can come in. SORRY!"

else
  puts "please enter an age"

end
