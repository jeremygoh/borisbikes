class Garage
	
	def initialize
		@bikes =[]
	end

	def has_bikes?
		!@bikes.empty?
	end

	def receive(bike)
		if @bikes.count == 10
			"Can't receive anymore bikes as at maximum capacity (10)."
		else
			@bikes << bike
		end	
	end

	def release(bike)
		@bikes.pop
	end



end