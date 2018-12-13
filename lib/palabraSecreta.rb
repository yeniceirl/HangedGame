class PalabraSecreta
  def initialize(palabra)
    @palabraSecreta = palabra
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
  
  
end