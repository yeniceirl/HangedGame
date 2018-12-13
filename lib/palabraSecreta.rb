class PalabraSecreta
  def initialize(palabra)
    @palabraSecreta = palabra
    @restante = 6
    @errores = 0
    @palabraSecretaConRayas = ""
    #@palabraSecreta.each_byte do |i|
     #  @palabraSecretaConRayas = @palabraSecretaConRayas + "_"
    #end
  end
    
  def cantidadLetras()
    cadena = ""
    @palabraSecreta.each_byte do |i|
       cadena = cadena + "_ "
    end
    cadena
  end
  
  def sustituirLetra(letra)
    indice = @palabraSecreta.index(letra)
    while indice != nil do
        @palabraSecretaConRayas[indice] = letra
    end
    @palabraSecretaConRayas
  end
  
  def validarLetra(letra)
  	if (@palabraSecreta.include? letra ) == false
  		@restante -= 1
  		@errores += 1
  		false
  	else
  		true
  	end
  end
  
end