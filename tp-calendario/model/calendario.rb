class Calendario

  attr_reader :nombre
	
  def initialize (nombre)
	  if nombre == ""
	    raise Exception, "El calendario no se puede crear sin un nombre."
	  end
	  @nombre = nombre
  end

  def crear_evento(evento)
    
  end

  def eliminar_evento()

  end

  def modificar_evento()
    
  end

end