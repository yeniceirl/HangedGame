require './lib/palabraSecreta.rb'
describe PalabraSecreta do

	it "deberia actualizar el estado actual" do
	palabraSecreta = PalabraSecreta.new("banana")
	palabraSecreta.palabraSecretaConRayasSet("______")
	palabraSecreta.validarLetra("E").should == false
	end

	it "deberia devolver 6 letras" do
	 palabra = PalabraSecreta.new("banana")
	 palabra.palabraSecretaConRayasSet("______")
	 palabra.cantidadLetras.should == "_ _ _ _ _ _ "
	end
	
	it "deberia reemplazar la letra a" do
	 palabra = PalabraSecreta.new("banana")
	 palabra.palabraSecretaConRayasSet("______")
	 palabra.sustituirLetra("a").should == "_a_a_a"
	end
	
end