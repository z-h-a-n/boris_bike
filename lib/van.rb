class Van
	def initialize (options = {})
		@bikes = []
	end

	def bike_count 
		@bikes.count #or .length
	end

	def load bike
		@bikes << bike
	end

	def release bike
		@bikes.delete(bike)
	end

end