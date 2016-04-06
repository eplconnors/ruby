question = "can we go to itchy and scratchy land?"
answer= "no"

until answer == 'yes'
    puts question
    answer= gets.chomp.downcase
end
