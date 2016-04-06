def dice
  sum = 0
	2.times do
		num = rand(1..6)
    sum += num
	end
end
puts dice
