def string_length
  puts "please input characters to be measured"
  string = gets.chomp
  puts "that contains #{string.length} characters "
end

puts string_length

def string_reverse
  puts "please input what you want backwards"
  string = gets.chomp
  puts "that spelled backwards is #{string.reverse}"
end

puts string_reverse
