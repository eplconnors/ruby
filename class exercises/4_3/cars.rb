cars = {'honda' => 'accord', 'toyota' => 'camry', 'gmc' => 'acadia', 'subaru' => 'outback'}

#ask what car they drive
# then say- oh a value, thats a key, right?
puts "what car do you drive?"
answer = gets.chomp.downcase

cars.each do |make, model|
  if answer == model
  puts "oh, you drive a #{model}, that's a #{make}, right?"
  end
end
