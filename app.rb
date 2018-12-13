require 'sinatra'
require './lib/palabraSecreta.rb'
enable :sessions

get '/' do
  
  erb :main  
    
end
post '/jugar' do
  palabra  = params[:palabraSecreta]
  @palabraS = PalabraSecreta.new(palabra)
  @palabraLinea = @palabraS.cantidadLetras()
  session[:palabraSecreta] = palabra
  session[:errores] = "0"
  session[:oportunidades] = "6"

  @Errores = session[:errores].to_i
  @Restantes = session[:oportunidades].to_i
  #session[:palabraSecretaConRayas] = @palabraSecretaConRayas
  erb :jugar
end

post '/jugarRecarga' do
  letra  = params[:letra]
  @palabraS = PalabraSecreta.new(session[:palabraSecreta].to_s)
  #@palabraS.sustituirLetra(letra)
  @palabraLinea = @palabraS.cantidadLetras()

  if @palabraS.validarLetra(letra) == false
    	@Errores = (session[:errores].to_i + 1)
    	session[:errores] = @Errores
    	@Restantes = (session[:oportunidades].to_i - 1)
    	session[:oportunidades] = @Restantes
   else
   		@Errores = session[:errores].to_i
   		@Restantes = session[:oportunidades].to_i
  end

  "_ a _ a _ a"
  erb :jugar
  
end