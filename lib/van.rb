class Van

	def initialize
		@bikes=[]
	end

	def has_bikes?
		!@bikes.empty?
	end

  	def receive bike
  		if @bikes.size >= 10
  			"Can't receive anymore bikes as full"
       	else
       		@bikes << bike
  	end


  	def release bike
  		if @bikes==[]
  			"Can't release a bike as don't have any"
  		else
  			@bikes.pop
  		end		
  	end

end
