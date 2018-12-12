class PalabraSecreta
  def initialize(palabra)
    @palabraSecreta = palabra
  end
  
  def validarPalabra()
    @palabraSecreta.include? ' '
  end
  
  
end