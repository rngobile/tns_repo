Facter.add(:sid) do
	setcode do
		File.foreach("/etc/oratab") do |file|
			if file.lines.grep(/\/db/).size > 0
				@line = file.lines
			end
		end
                puts @line.first.split(':').first
	end
end
