class Vehicle
  attr_accessor :type_model, :brand, :year
  def initialize (brand, type_model, year)
    @brand = brand
    @type_model = type_model
    @year = year
  end

end

new_car= Vehicle.new('GMC', 'acadia', '2003')
puts new_car.type_model
puts new_car.year
new_car.year = 2016
puts new_car.year
