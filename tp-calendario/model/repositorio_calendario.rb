class RepositorioCalendario

	def agregarCalendario( nombreCalendario)
		calendario = Calendario.new(nombreCalendario)
		archivo = File.open("archivoCalendario.txt", 'a')
		archivo.puts(nombreCalendario)
		archivo.close
		return calendario.nombre
	end
	
	def obtenerCalendarios()
		archivo = File.open("archivoCalendario.txt", 'r')
		archivo.readlines.each do |nombre|
			puts nombre
		end
		archivo.close
	end
	
	def obtenerCalendario(nombreCalendario)
		archivo = File.open("archivoCalendario.txt", 'r')
		archivo.readlines.each do |nombre|
			if nombre == nombreCalendario
				puts nombre
			end
		end
		archivo.close
	end
end

