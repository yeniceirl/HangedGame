require 'sinatra'
require './lib/palabraSecreta.rb'
enable :sessions

get '/' do
  erb :main  
end
post '/jugar' do
  palabra  = params[:palabraSecreta]
  palabraConRayas = ""
  palabra.each_byte do |i|
    palabraConRayas = palabraConRayas + "_"
  end
  
  session[:palabraSecreta] = palabra
  session[:palabraSecretaConRayas] = palabraConRayas
  session[:letrasUsadas] = ""
  @letrasUsadas = session[:letrasUsadas]

  @palabraS = PalabraSecreta.new(palabra)
  @palabraS.palabraSecretaConRayasSet(palabraConRayas)
  @palabraLinea = @palabraS.cantidadLetras()

  session[:palabraSecreta] = palabra
  session[:errores] = "0"
  session[:oportunidades] = "6"

  @Errores = session[:errores].to_i
  @Restantes = session[:oportunidades].to_i

  erb :jugar
end

post '/jugarRecarga' do
  letra  = params[:letra]
  session[:letrasUsadas] = session[:letrasUsadas] +  letra
  @palabraS = PalabraSecreta.new(session[:palabraSecreta])
  @palabraS.palabraSecretaConRayasSet(session[:palabraSecretaConRayas])
  @palabraS.sustituirLetra(letra)
  session[:palabraSecretaConRayas] = @palabraS.palabraSecretaConRayas()
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

  if @palabraS.compararPalabras()
    @resultado = "Victoria"
  elsif (session[:oportunidades].to_i == 0)
    @resultado = "Perdiste" + " La palabra correcta es: " +  session[:palabraSecreta]
  end
  
  @letrasUsadas = session[:letrasUsadas].to_s
  erb :jugar
end