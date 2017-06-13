require 'rspec' 
require_relative '../model/frecuencia_factory'
require_relative '../model/frecuencia_diaria'

describe 'FrecuenciaFactory' do

  before do
    @fabrica_de_frecuencias = FrecuenciaFactory.new 
  end

  it 'deberia devolver un objeto de tipo FrecuenciaDiaria cuando se pone parametro "diaria"' do
  	frecuencia = "diaria"
  	valor_obtenido =  	@fabrica_de_frecuencias.nueva_frecuencia(frecuencia)
  	valor_esperado = FrecuenciaDiaria
  	expect(valor_obtenido).to be_kind_of(valor_esperado)
  end

  it 'deberia devolver un objeto de tipo FrecuenciaDiaria cuando se pone parametro "Diaria"' do
  	frecuencia = "diaria"
  	valor_obtenido = @fabrica_de_frecuencias.nueva_frecuencia(frecuencia)
  	valor_esperado = FrecuenciaDiaria
  	expect(valor_obtenido).to be_kind_of(valor_esperado)
  end

  it 'deberia devolver un objeto de tipo FrecuenciaSemanal cuando se pone parametro "semanal"' do
  	frecuencia = "semanal"
  	valor_obtenido = @fabrica_de_frecuencias.nueva_frecuencia(frecuencia)
  	valor_esperado = FrecuenciaSemanal
  	expect(valor_obtenido).to be_kind_of(valor_esperado)	
  end

  it 'deberia devolver un objeto de tipo FrecuenciaMensual cuando se pone parametro "mensual"' do
  	frecuencia = "mensual"
  	valor_obtenido = @fabrica_de_frecuencias.nueva_frecuencia(frecuencia)
  	valor_esperado = FrecuenciaMensual
  	expect(valor_obtenido).to be_kind_of(valor_esperado)	
  end

  it 'deberia devolver un objeto de tipo FrecuenciaAnual cuando se pone parametro "anual"' do
  	frecuencia = "anual"
  	valor_obtenido = @fabrica_de_frecuencias.nueva_frecuencia(frecuencia)
  	valor_esperado = FrecuenciaAnual
  	expect(valor_obtenido).to be_kind_of(valor_esperado)	
  end

  it 'deberia devolver Excepcion cuando se pone parametro "quincenal"' do
  	frecuencia = "quincenal"
    expect{@fabrica_de_frecuencias.nueva_frecuencia(frecuencia)}.to raise_exception
  end

end