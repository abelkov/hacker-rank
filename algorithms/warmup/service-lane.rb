gets
width = gets.split.map {|n| n.to_i}
ARGF.each do |line|
	i, j = line.split.map {|n| n.to_i}
	k = i
	type = 3
	while k <= j
		if type > width[k]
			type = width[k]
		end
		k += 1
	end
	puts type
end
