require 'rspec' 
require 'date'
require_relative '../model/evento'
require_relative '../model/recurrencia'

describe 'Evento' do

  before do
    @evento = Evento.new "aydoo2017","1", "calendario2017"
    @evento.set_inicio("2017-03-31T18:00:00-03:00")
    @evento.set_fin("2017-03-31T22:00:00-03:00")
  end

  it 'deberia crearse con nombre_evento "aydoo2017"' do
  	valor_esperado = "aydoo2017"
  	valor_obtenido = @evento.nombre_evento
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia crearse con id_evento "1"' do
  	valor_esperado = "1"
  	valor_obtenido = @evento.id_evento
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia crearse con nombre_calendario "calendario2017"' do
  	valor_esperado = "calendario2017"
  	valor_obtenido = @evento.nombre_calendario_evento
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia crearse con inicio_evento "2017-03-31T18:00:00-03:00"' do
  	valor_esperado = DateTime.parse("2017-03-31T18:00:00-03:00")
  	valor_obtenido = @evento.inicio_evento
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia crearse con fin_evento "2017-03-31T22:00:00-03:00"' do
  	valor_esperado = DateTime.parse("2017-03-31T22:00:00-03:00")
  	valor_obtenido = @evento.fin_evento
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia poder modificarse inicio_evento "2017-03-31T19:00:00-03:00"' do
  	@evento.set_inicio("2017-03-31T19:00:00-03:00")
  	valor_esperado = DateTime.parse("2017-03-31T19:00:00-03:00")
  	valor_obtenido = @evento.inicio_evento
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia poder modificarse fin_evento "2017-03-31T23:00:00-03:00"' do
  	@evento.set_fin("2017-03-31T23:00:00-03:00")
  	valor_esperado = DateTime.parse("2017-03-31T23:00:00-03:00")
  	valor_obtenido = @evento.fin_evento
	  expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia devolver una lista con todas las fechas diaria' do
    @evento.set_inicio("2017-03-01T18:00:00-03:00")
    @evento.set_fin("2017-03-01T20:00:00-03:00")
    fecha_fin = "2017-03-3T20:00:00-03:00"
    recurrencia = Recurrencia.new("diaria", fecha_fin)
    @evento.calcular_recurrencia(recurrencia)
    fecha1 = DateTime.parse("2017-03-01T18:00:00-03:00")
    fecha2 = DateTime.parse("2017-03-02T18:00:00-03:00")
    fecha3 = DateTime.parse("2017-03-03T18:00:00-03:00")
    fecha4 = DateTime.parse("2017-03-01T20:00:00-03:00")
    fecha5 = DateTime.parse("2017-03-02T20:00:00-03:00")
    fecha6 = DateTime.parse("2017-03-03T20:00:00-03:00")
    valor_esperado = [fecha1, fecha4, fecha2, fecha5, fecha3, fecha6]
    valor_obtenido = @evento.get_lista
    expect(valor_obtenido).to eq(valor_esperado)
  end

 end