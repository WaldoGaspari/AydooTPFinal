require 'date'

class FrecuenciaMensual

  def anotar_evento_en_calendario(fecha_inicio) 
  	fecha = DateTime.parse(fecha_inicio)
    fecha_nueva = fecha.next_month(1)
    return fecha_nueva.iso8601
  end

end 	