class RepositorioCalendario

	def agregarCalendario( nombreCalendario)
		calendario = Calendario.new(nombreCalendario)
		archivo = File.open("archivoCalendario.txt", 'a')
		archivo.puts(nombreCalendario)
		archivo.close
		return calendario.nombre
	end
end