class PalabraSecreta
  def initialize(palabra)
    @palabraSecreta = palabra
    @palabraSecretaConRayas = ""
    @palabraSecreta.each_byte do |i|
       @palabraSecretaConRayas = @palabraSecretaConRayas + "_"
    end
  end
    
  def cantidadLetras()
    cadena = ""
    @palabraSecretaConRayas.each_byte do |i|
       cadena = cadena + "_ "
    end
    cadena
  end
  
  def sustituirLetra(letra)
    for i in 1..@palabraSecreta.length do
      if @palabraSecreta[i] == letra
        @palabraSecretaConRayas[i] = letra
      end
    end
    @palabraSecretaConRayas
  end
  
  
end