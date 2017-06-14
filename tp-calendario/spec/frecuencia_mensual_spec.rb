require 'rspec' 
require_relative '../model/frecuencia_mensual'

describe 'FrecuenciaMensual' do

  before do
    @anotador_de_frecuencia = FrecuenciaMensual.new 
  end

  it 'deberia devolver "2017-04-18T18:00:00-03:00"' do
    fecha_inicio = DateTime.parse("2017-03-18T18:00:00-03:00")
  	valor_esperado = DateTime.new(2017, 4, 18, 18, 0, 0, "-03:00") 
  	valor_obtenido = @anotador_de_frecuencia.calcular_fecha_siguiente(fecha_inicio)
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia devolver "2000-01-1T18:00:00-03:00"' do
    fecha_inicio = DateTime.parse("1999-12-30T18:00:00-03:00")
    valor_esperado = DateTime.new(2000, 1, 30, 18, 0, 0, "-03:00") 
    valor_obtenido = @anotador_de_frecuencia.calcular_fecha_siguiente(fecha_inicio)
    expect(valor_obtenido).to eq(valor_esperado)
  end

end