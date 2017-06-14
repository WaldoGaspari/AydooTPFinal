class Evento
  
  attr_reader :nombre_evento, :id_evento
  attr_accessor :inicio_evento, :fin_evento, :nombre_calendario_evento, 
                :recurrecia_evento, :lista_fechas, :fabrica_frecuencia

  
  def initialize(nombre, id, nombre_calendario, recurrencia)
    @nombre_evento = nombre
    @id_evento = id
    @nombre_calendario_evento = nombre_calendario
    @recurrecia_evento = recurrencia
    @lista_fechas = []
    @fabrica_frecuencia = FrecuenciaFactory.new
  end

  def set_inicio(inicio_nuevo)
    fecha = DateTime.parse(inicio_nuevo)
  	@inicio_evento = fecha
  end

  def set_fin(fin_nuevo)
    fecha = DateTime.parse(fin_nuevo)
  	@fin_evento = fecha
  end
  
  def set_recurrencia(recurrencia)
    frecuencia_evento = DateTime.parse(recurrencia.frecuencia)
    fecha_fin = recurrencia.fecha_fin
    fecha_actual = @inicio_evento
    i = 0
    while fecha_actual =< fecha_fin
      lista_fechas[i] = fecha_actual
      @fecha_actual = @frecuencia_seleccionada.calcular_fecha_siguiente(fecha_actual)
      i++
    end
  end

end 