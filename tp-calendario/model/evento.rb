require "date"

class Evento
  
  attr_reader :nombre_evento, :id_evento
  attr_accessor :inicio_evento, :fin_evento, :nombre_calendario_evento, 
                :recurrecia_evento, :lista_fechas, :fabrica_frecuencia

  
  def initialize(nombre, id, nombre_calendario)
    @nombre_evento = nombre
    @id_evento = id
    @nombre_calendario_evento = nombre_calendario
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

  def calcular_recurrencia(recurrencia)
    frecuencia_actual = @fabrica_frecuencia.nueva_frecuencia(recurrencia.get_frecuencia)
    fecha_fin = recurrencia.get_fecha_fin
    fecha_actual = @inicio_evento
    hora_actual = @inicio_evento
    hora_fin = @fin_evento
    i = 0
    j = 1
    while fecha_actual <= fecha_fin do
      @lista_fechas[i] = fecha_actual
      @lista_fechas[j] = hora_fin
      fecha_actual = frecuencia_actual.calcular_fecha_siguiente(fecha_actual)
      hora_fin = frecuencia_actual.calcular_fecha_siguiente(hora_fin)
      i = i + 2
      j = j + 2
    end
  end

  def get_lista
    return @lista_fechas
  end

end 