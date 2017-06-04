class Calendario

	attr_reader :nombre
	
	def initialize (nombre)
		if nombre == ""
			raise Exception, "El calendario no se puede crear sin un nombre."
		end
		@nombre = nombre
	end
end