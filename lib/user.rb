class User

	attr_accessor :name
	attr_writer :is_inside_lu

	def initialize
		@is_inside_lu = false
	end

	def is_inside_lu?
		@is_inside_lu
	end
end