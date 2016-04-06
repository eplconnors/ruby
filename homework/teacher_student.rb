teacher = ['Matt', 'Alex', 'Sandy', 'Sally']
student = ['Emily', 'Theo', 'Alice', 'Bill']

puts "please tell me your name"
name= gets.chomp.capitalize

student.each do |stu|
  if name == stu
    puts "hey there! welcome to class!"
  end
end

teacher.each do |teach|
  if name == teach
    puts "Hello Mr. #{name}. Thank you for being here today"
  end
end
