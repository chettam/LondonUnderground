require_relative 'public_container'

class Line

include PublicContainer

	attr_writer :is_opened

def is_opened?
	@is_opened
end



end