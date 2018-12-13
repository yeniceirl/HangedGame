class PalabraSecreta
  def initialize(palabra)
    @palabraSecreta = palabra
    @restante = 6
    @errores = 0
    @palabraSecretaConRayas = ""
  end
  
  def palabraSecretaConRayas
    @palabraSecretaConRayas
  end
  
  def palabraSecretaConRayasSet(palabra)
    @palabraSecretaConRayas = palabra
  end
    
  def cantidadLetras()
    cadena = ""
    @palabraSecretaConRayas.each_char do |i|
       cadena = cadena + i.to_s + " "
    end
    cadena
  end
  
  def sustituirLetra(letra)
    for i in 0..(@palabraSecreta.length - 1) do
      if @palabraSecreta[i] == letra
        @palabraSecretaConRayas[i] = letra
      end
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
  
  def compararPalabras
    @palabraSecreta == @palabraSecretaConRayas
  end
  
end