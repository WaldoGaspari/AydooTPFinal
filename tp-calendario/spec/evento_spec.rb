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
	expect(@evento.nombre_evento).to eq(valor_esperado)
  end

  it 'deberia crearse con id_evento "1"' do
  	valor_esperado = "1"
	expect(@evento.id_evento).to eq(valor_esperado)
  end


  it 'deberia crearse con nombre_calendario "calendario2017"' do
  	valor_esperado = "calendario2017"
	expect(@evento.nombre_calendario_evento).to eq(valor_esperado)
  end

  it 'deberia crearse con recurrencia "diaria"' do
  	valor_esperado = "diaria"
	expect(@evento.recurrecia_evento).to eq(valor_esperado)
  end

  it 'deberia crearse con inicio_evento "2017-03-31T18:00:00-03:00"' do
  	valor_esperado = "2017-03-31T18:00:00-03:00"
	expect(@evento.inicio_evento).to eq(valor_esperado)
  end

  it 'deberia crearse con fin_evento "2017-03-31T22:00:00-03:00"' do
  	valor_esperado = "2017-03-31T22:00:00-03:00"
	expect(@evento.fin_evento).to eq(valor_esperado)
  end

 end