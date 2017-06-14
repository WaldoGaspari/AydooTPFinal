require 'date'

class FrecuenciaSemanal
  
  def calcular_fecha_siguiente(fecha)
    fecha_nueva = fecha.next_day(7)
    return fecha_nueva	
  end

end 	