class Product
  def initialize(color, price, quantity)
    @color, @price, @quantity = color, price, quantity
  end
  def sell
    puts 'How many do you wanna buy'
    input = gets.chomp.to_i
    if input > @quantity
      puts "Sorry, but you requested #{input - @quantity} more than we have in stock."
    else
      @quantity -=input
      puts "You purchased #{input}"
    end
  end
  def quantity
    @quantity
  end
  def price
    @price
  end
end
new_product = Product.new('Navy Blue', 5, 10)
puts new_product.quantity
puts new_product.sell
