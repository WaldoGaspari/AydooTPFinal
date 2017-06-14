class RepositorioCalendario

	def agregarCalendario( nombreCalendario)
		calendario = Calendario.new(nombreCalendario)
		archivo = File.open("archivoCalendario.txt", 'a')
		archivo.puts(nombreCalendario)
		archivo.close
		return calendario.nombre
	end
	
	def obtenerCalendarios()
		lineas = []
		archivo = File.open("archivoCalendario.txt")
		archivo.each do |nombre|
			lineas << nombre
		end
		archivo.close
		return lineas
	end
	
	def obtenerCalendario(nombreCalendario)
		contenido = " "
		archivo = File.open("archivoCalendario.txt", 'r')
		archivo.each do |nombre|
			if nombre == nombreCalendario
				contenido = nombre
			end
		end
		archivo.close
		return contenido
	end
end

