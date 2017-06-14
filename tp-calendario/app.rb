require 'sinatra'
require_relative 'model/calendario'
require_relative 'model/repositorio_calendario'

repositorioCalendario = RepositorioCalendario.new

post '/calendarios' do
	begin
		repositorio = repositorioCalendario.agregarCalendario(params['x'])
		"#{repositorio}"
	end
end

get '/calendarios' do
	begin
		repositorio = repositorioCalendario.obtenerCalendarios()
		"#{repositorio}"
	end
end

get '/calendarios/nombre' do
	begin
		repositorio = repositorioCalendario.obtenerCalendario(params['x'])
		"#{repositorio}"
	end

post '/eventos'
	begin

	end

delete '/eventos/id'
	begin

	end

get '/eventos'
	begin

	end

get '/eventos?calendario=calendarioNombre'
	begin

	end

end
