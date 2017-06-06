class Evento
  
  attr_reader :nombre_evento, :id_evento
  attr_accessor :inicio_evento, :fin_evento, :nombre_calendario_evento, :recurrecia_evento
  
  def initialize(nombre, id, nombre_calendario, recurrencia)
    @nombre_evento = nombre
    @id_evento = id
    @nombre_calendario_evento = nombre_calendario
    @recurrecia_evento = recurrencia
  end

  def set_inicio(inicio_nuevo)
  	@inicio_evento = inicio_nuevo
  end

  def set_fin(fin_nuevo)
  	@fin_evento = fin_nuevo
  end

end 