Facter.add(:oracle_home) do
	confine :kernel => "Linux"
	File.foreach("/etc/oratab") do |file|
		if file.lines.grep(/\/db/).size > 0
			@line = file.lines
		end
	end
	setcode do
		@line.first.split(':')[1]
	end
end
