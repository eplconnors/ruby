class Pet
  attr_reader :type, :sound
  attr_accessor :name
  def initialize (name, type, sound)
    @name = name
    @type = type
    @sound = sound
  end
  #def sound
    #@sound
  #end
end

my_pet = Pet.new('Corduroy', 'dog', 'woof')
your_pet = Pet.new('Pesci', 'cat', 'meow')


puts my_pet.sound
puts your_pet.sound
#my_pet.name = 'Otis'
puts my_pet.name
