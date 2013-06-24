class DockingStation

	def initialize
		@bikes = []
	end

	def has_bikes?
		!@bikes.empty?
	end

	def receive(bike)
		if @bikes.size == 10
			"Can't receive as docking station is full."
		else
		@bikes << bike
		end
	end

	def rent_bike
		if @bikes==[]
			"No bikes to rent."
		else
			@bikes.pop		#bike rented should be a working bike!
		end
	end
end

