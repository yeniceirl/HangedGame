class PalabraSecreta
  def initialize(palabra)
    @palabraSecreta = palabra
    @restante = 6
    @errores = 0
  end
  
  def validarPalabra()
    @palabraSecreta.include? ' '
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