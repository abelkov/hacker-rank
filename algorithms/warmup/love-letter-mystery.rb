gets
ARGF.each do |line|
	line.chomp!
	i, j = 0, line.length - 1
	count = 0
	while i < j
		if line[i] != line[j]
			count += (line[i].ord - line[j].ord).abs
		end
		i += 1
		j -= 1
	end
	puts count
end 