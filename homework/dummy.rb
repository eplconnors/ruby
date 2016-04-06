#Write a program that repeats everything a user inputs. It should only stop when a user types "I'm a dummy"

query= "Tell me something about yourself"
answer = " "

until answer == "i'm a dummy"
  puts answer + " also"
  puts query
  answer = gets.chomp.downcase

end
