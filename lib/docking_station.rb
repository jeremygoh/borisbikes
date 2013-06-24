class DockingStation

	def initialize
		@bikes = []
	end

	def has_bikes?
		!@bikes.empty?
	end

	def receive(bike)
		@bikes << bike
	end
end