puts "What grade did you get on the test?"
answer=gets.chomp.to_i

if answer <= 60
  puts "You failed and need to take the class again"

else
  puts "You passed! Congratulations!!"

end
