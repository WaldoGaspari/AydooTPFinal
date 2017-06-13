class FrecuenciaFactory

  attr_accessor :frecuencia_seleccionada
  attr_accessor :diccionario_frecuencias

  def initialize
    @diccionario_frecuencias = {"diaria"=> FrecuenciaDiaria.new, 
    	                        "semanal" => FrecuenciaSemanal.new,
    	                    	"mensual" => FrecuenciaMensual.new,
    	                    	"anual" => FrecuenciaAnual.new}
  end
											
  def nueva_frecuencia(frecuencia)
  	frecuencia_a_minuscula = frecuencia.downcase
  	if @diccionario_frecuencias[frecuencia_a_minuscula] == nil
  	  raise Exception, "No se puede aplicar dicha frecuencia. Las frecuencias disponibles son : 'diaria'-'semanal'-'mensual'-'anual'"
  	else
  	  @frecuencia_seleccionada = @diccionario_frecuencias[frecuencia_a_minuscula]  	
  	end
  	  return @frecuencia_seleccionada
  end

end 