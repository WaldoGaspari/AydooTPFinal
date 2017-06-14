require 'date'

class FrecuenciaMensual

  def calcular_fecha_siguiente(fecha) 
    fecha_nueva = fecha.next_month(1)
    return fecha_nueva
  end

end 	