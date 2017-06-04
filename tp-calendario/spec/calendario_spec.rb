require 'rspec' 
require_relative '../model/calendario'

describe 'Calendario' do
	
	begin
		it 'crear calendario con nombre Calendario2017' do
			calendario = Calendario.new "Calendario2017"
			expect(calendario.nombre).to eq("Calendario2017")
		end
		
		it 'crear calendario con nombre CalendarioPablo' do
			calendario = Calendario.new "CalendarioPablo"
			expect(calendario.nombre).to eq("CalendarioPablo")
		end
		
		it 'crear un calendario sin nombre da una excepcion' do
			expect{Calendario.new ""}.to raise_exception
		end
	end
end