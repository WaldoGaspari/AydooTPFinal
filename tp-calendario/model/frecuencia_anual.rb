require 'date'

class FrecuenciaAnual

  def anotar_evento_en_calendario(fecha_inicio) 
  	fecha = DateTime.parse(fecha_inicio)
    fecha_nueva = fecha.next_year(1)
    return fecha_nueva.iso8601
  end

end 	