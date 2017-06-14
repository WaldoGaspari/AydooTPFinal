require 'rspec' 
require_relative '../model/frecuencia_anual'

describe 'FrecuenciaAnual' do

  before do
    @anotador_de_frecuencia = FrecuenciaAnual.new 
  end

  it 'deberia devolver "2018-03-18T18:00:00-03:00"' do
    fecha_inicio = DateTime.parse("2017-03-18T18:00:00-03:00")
  	valor_esperado = DateTime.new(2018, 3, 18, 18, 0, 0, "-03:00") 
  	valor_obtenido = @anotador_de_frecuencia.calcular_fecha_siguiente(fecha_inicio)
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia devolver "2000-12-30T18:00:00-03:00"' do
    fecha_inicio = DateTime.parse("1999-12-30T18:00:00-03:00")
    valor_esperado = DateTime.new(2000, 12, 30, 18, 0, 0, "-03:00") 
    valor_obtenido = @anotador_de_frecuencia.calcular_fecha_siguiente(fecha_inicio)
    expect(valor_obtenido).to eq(valor_esperado)
  end

end