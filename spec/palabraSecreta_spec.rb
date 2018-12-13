require './lib/palabraSecreta.rb'
describe PalabraSecreta do
	it "deberia actualizar el estado actual"
	palabraSecreta = PalabraSecreta.new("banana")
	palabraSecreta.validarLetra("E").should == false
end