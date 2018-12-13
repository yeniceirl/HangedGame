require 'sinatra'
require './lib/palabraSecreta.rb'

get '/' do
  
  erb :main  
    
end
post '/jugar' do
  palabra  = params[:palabraSecreta]
  @palabraS = PalabraSecreta.new(palabra)
  @palabraLinea = @palabraS.cantidadLetras()
  session[:palabraSecreta] = palabra
  #session[:palabraSecretaConRayas] = @palabraSecretaConRayas
  erb :jugar
end

post '/jugarRecarga' do
  letra  = params[:letra]
  #@palabraS = PalabraSecreta.new(session[:palabraSecreta])
  #@palabraS.sustituirLetra(letra)
  #@palabraLinea = @palabraS.cantidadLetras()
  #erb :jugar
  "_ a _ a _ a"
end