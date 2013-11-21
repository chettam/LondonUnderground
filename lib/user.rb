class User

	attr_accessor :name

	def initialize
		@is_inside_lu = false
	end

	def is_inside_lu?
		@is_inside_lu
	end

	def is_inside_lu
		@is_inside_lu = true
	end	

	# def is_inside(train)
 # 		train
	# end

	# def train
	# 	@train
	# end

end