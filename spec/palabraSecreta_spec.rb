require './lib/palabraSecreta.rb'
describe PalabraSecreta do
	it "deberia devolver 6 letras" do
	 palabra = PalabraSecreta.new("banana")
	 palabra.cantidadLetras.should == "_ _ _ _ _ _ "
	end
	
	#it "deberia reemplazar la letra a" do
	# palabra = PalabraSecreta.new("banana")
	# palabra.sustituirLetra("a").should == "_a_a_a"
	#end
	
end