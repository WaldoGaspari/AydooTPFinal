require 'date'

class FrecuenciaDiaria
  
  def calcular_fecha_siguiente(fecha)
  	fecha = DateTime.parse(fecha)
    fecha_nueva = fecha.next_day(1)
    return fecha_nueva.iso8601	
  end

end 	