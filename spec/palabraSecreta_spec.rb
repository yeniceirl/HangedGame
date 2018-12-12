require './lib/palabraSecreta.rb'

describe PalabraSecreta do
  it "no permite espacio" do
    palabraS = PalabraSecreta.new("manzana verde")
    palabraS.validarPalabra.should == false
  end
end