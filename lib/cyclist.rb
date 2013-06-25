class Cyclist

	def initialize
		@possession = []
	end

	def has_bike?
		!@possession.empty?
	end

	def rent(bike)
		if self.has_bike?
			"Can't rent another bikes as you have one already."
		else	
			@possession << bike
		end
	end

	def return(bike)
		@possession.pop
	end

end