# Create an array of animals...

animal_array = ['dog', 'cat', 'lion', 'goldfish']

animal_sounds = {"dog" => "woof", "cat" => "meow", "lion" => "roar", "goldfish" => "blub blub"}

animal_array.each do |x|
  puts "The #{x} goes #{animal_sounds[x]}"

end
