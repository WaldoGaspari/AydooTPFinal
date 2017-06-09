class ManejadorRecurrencia
  
  attr_reader	:frecuencia_siguiente
  
  def initialize(frecuencia_sig)
  	@frecuencia_siguiente = frecuencia_sig.downcase
  end

  def peticion_en_proceso(peticion_frecuencia)
  	if iniciar_frecuencia_aceptado(peticion_frecuencia)
  		return
  	elsif @frecuencia_siguiente
  		@frecuencia_siguiente.peticion_en_proceso(peticion_frecuencia)
    else
  		frecuencia_no_aceptada(peticion_frecuencia)
  	end
  end

  def iniciar_frecuencia_aceptada(peticion_frecuencia)
    raise 'Metodo #iniciar_frecuencia_aceptada debe ser implementado'
  end

  def frecuencia_no_aceptada(peticion_frecuencia)
  	"No puede aplicarse frecuencia '#{peticion_frecuencia}'. Frecuencias aceptadas: diaria-semanal-mensual-anual"
  end

end

=begin
  
  PARA IMPLENTARLO TENDRIA QUE SER ALGO ASI 
  chain_of_responsibility = FrecuenciaDiaria.new(
                              FrecuenciaSemanal.new(
                                FrecuenciaMensual.new(
                                  FrecuenciaAnual.new()
                                )
                              )
                            )

  chain_of_responsibility.peticion_en_proceso("semanal")

=end