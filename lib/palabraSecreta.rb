class PalabraSecreta
  def initialize(palabra)
    @palabraSecreta = palabra
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
  
  
end