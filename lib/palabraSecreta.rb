class PalabraSecreta
  def initiliaze(palabra)
    @palabraSecreta = palabra
  end
  
  def validarPalabra()
    @palabraSecreta.include? ' '
  end
end