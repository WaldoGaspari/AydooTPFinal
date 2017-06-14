require 'rspec' 
require_relative '../model/repositorio_calendario'

describe 'RepositorioCalendario' do

let(:repositorioCalendario) { RepositorioCalendario.new }

 begin

	it 'crear calendario y guardarlo en un archivo' do
	  expect(repositorioCalendario.agregarCalendario("Aydoo2017")).to eq("Aydoo2017")
   	end
   	
   	it 'crear calendario NuevoCalendario y guardarlo en un archivo' do
	  expect(repositorioCalendario.agregarCalendario("NuevoCalendario")).to eq("NuevoCalendario")
   	end
   	
   	it 'crear calendario sin nombre no se puede guardar' do
	  expect{repositorioCalendario.agregarCalendario("")}.to raise_exception
   	end
   	
   	it 'obtener calendarios guardardos en un archivo' do
	  expect(repositorioCalendario.obtenerCalendarios())
   	end
  	
  end
end