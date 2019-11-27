class Task
	def loop i
		input = '1'
		i.times do
			puts input
			output = ''
			count = 0
			char = input[0]
			input.each_char do |a|
				if char == a
					count += 1
					next
				end
				output += count.to_s + char
				count = 1
				char = a
			end
			output += count.to_s + char
			input = output
		end
	end
end

Task.new.loop ARGV[0].to_i