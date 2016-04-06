# Write a program that keeps asking the user for a number until they type done. Puts the addition of the numbers.

input = ''
sum = 0
until input == 'done'
  puts 'What is a number?'
  input = gets.chomp.downcase
  sum += input.to_i

end

puts "Your sum is #{sum}"
