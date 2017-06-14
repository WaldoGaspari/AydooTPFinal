require 'date'

class Recurrencia 

  attr_accessor :frecuencia, :fecha_fin	
	
  def initialize(frecuencia_recibida, fecha_fin_recibida)
  	@frecuencia = frecuencia_recibida
  	@fecha_fin = DateTime.parse(fecha_fin_recibida)
  end

  def get_frecuencia
  	return @frecuencia
  end

  def get_fecha_fin
    return @fecha_fin
  end

end


