require 'rspec' 
require_relative '../model/evento'

describe 'Evento' do

  before do
    @evento = Evento.new "aydoo2017","1", "calendario2017", "diaria"
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

  it 'deberia crearse con recurrencia "diaria"' do
  	valor_esperado = "diaria"
  	valor_obtenido = @evento.recurrecia_evento
	expect(@evento.recurrecia_evento).to eq(valor_esperado)
  end

  it 'deberia crearse con inicio_evento "2017-03-31T18:00:00-03:00"' do
  	valor_esperado = "2017-03-31T18:00:00-03:00"
  	valor_obtenido = @evento.inicio_evento
	expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia crearse con fin_evento "2017-03-31T22:00:00-03:00"' do
  	valor_esperado = "2017-03-31T22:00:00-03:00"
  	valor_obtenido = @evento.fin_evento
	expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia poder modificarse inicio_evento "2017-03-31T19:00:00-03:00"' do
  	@evento.set_inicio("2017-03-31T19:00:00-03:00")
  	valor_esperado = "2017-03-31T19:00:00-03:00"
  	valor_obtenido = @evento.inicio_evento
	expect(valor_obtenido).to eq(valor_esperado)
  end

  it 'deberia poder modificarse fin_evento "2017-03-31T23:00:00-03:00"' do
  	@evento.set_fin("2017-03-31T23:00:00-03:00")
  	valor_esperado = "2017-03-31T23:00:00-03:00"
  	valor_obtenido = @evento.fin_evento
	expect(valor_obtenido).to eq(valor_esperado)
  end

 end