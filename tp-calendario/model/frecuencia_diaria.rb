class FrecuenciaDiaria < ManejadorRecurrencia

  attr_reader :tipo_frecuencia = "diaria"

  def iniciar_frecuencia_aceptada(peticion_frecuencia)
  	if frecuencia == @tipo_frecuencia
  	  "Deberia sumar de a 1 dia" 
  	  /metodo_a_impletar/
  	  return true 
  	else
  	  return false
  	end
  end

  def metodo_a_implementar
  end

end