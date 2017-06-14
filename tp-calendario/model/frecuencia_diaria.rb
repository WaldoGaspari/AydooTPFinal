require 'date'

class FrecuenciaDiaria
  
  def anotar_evento_en_calendario(fecha_inicio)
  	fecha = DateTime.parse(fecha_inicio)
    fecha_nueva = fecha.next_day(1)
    return fecha_nueva.iso8601	
  end

end 	