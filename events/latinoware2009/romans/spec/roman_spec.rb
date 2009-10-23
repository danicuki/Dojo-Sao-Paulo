require 'lib/roman'

describe "Programa para transformar algarismo romano em arabico" do
  it "A String I deve retornar 1" do
    Roman.new("I").arabico.should == 1
  end

  it "A String V deve retornar 5" do
    Roman.new("V").arabico.should == 5
  end

	it "A String X deve retornar 10" do
	  Roman.new("X").arabico.should == 10
	end
	
	it "Outros algarismos simples" do
	  Roman.new("L").arabico.should == 50
	  Roman.new("C").arabico.should == 100
	  Roman.new("D").arabico.should == 500
	  Roman.new("M").arabico.should == 1000
	  
	end
	it "teste para os numeros romanos de dois digitos" do 
		 Roman.new("XX").arabico.should == 20
	end
	
	it "A String XI deve retornar 11" do
	  Roman.new("XI").arabico.should == 11
	end

end
