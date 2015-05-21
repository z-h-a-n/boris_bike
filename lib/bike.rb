class Bike

	def initialize
		#@something is an instance variable
		@broken = false
	end

	def broken?
		@broken
	end

	def break
		@broken = true
	end

	def fix
		@broken = false
	end

end

