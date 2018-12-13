require 'sinatra'
require './lib/palabraSecreta.rb'

get '/' do
  
  erb :main  
    
end
post '/jugar' do
  palabra  = params[:palabraSecreta]
  @@palabraS = PalabraSecreta.new(palabra)
  @palabraLinea = @@palabraS.cantidadLetras()
  erb :jugar
end

post '/jugarRecarga' do
  letra  = params[:letra]
  @@palabraS.sustituirLetra(letra)
  @palabraLinea = @@palabraS.cantidadLetras()
  erb :jugar
end