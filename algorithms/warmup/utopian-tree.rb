def grow (height, cycle)
	if cycle == :monsoon
		[height*2, :summer]
	else
		[height+1, :monsoon]
	end
end

t = gets.to_i
ARGF.each do |line|
	height = 1
	cycle = :monsoon
	n = line.to_i
	(0...n).each do
		height, cycle = grow(height, cycle)
	end
	puts height
end
