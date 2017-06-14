require 'date'

class FrecuenciaAnual

  def calcular_fecha_siguiente(fecha) 
    fecha_nueva = fecha.next_year(1)
    return fecha_nueva
  end

end 	