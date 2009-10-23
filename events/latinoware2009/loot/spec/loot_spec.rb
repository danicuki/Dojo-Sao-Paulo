require 'lib/loot'

describe "Problema da divisão de tesouro" do
  it "deveria dar 1 pedra para 1 pirata quando tem 1 pedra e 1 pirata" do
    l = Loot.new(1, [5])
		l.split.should == [[5]]
  end

	it "deveria dar uma pedra de 4 para 1 pirata quando só tem 1 pedra de 4 e um pirata" do
    l = Loot.new(1, [4])
		l.split.should == [[4]]
	end
	
	it "deveria dividir o tesouro [5,5] por 2 piratas, cada um recebendo [5]" do
    l = Loot.new(2, [5,5])
		l.split.should == [[5],[5]]
	end
	
	it "deveria retornar inválido se o numero de piratas for maior que o número de pedras" do
	  l = Loot.new(6, [5,5])
		l.split.should == "Inválido"
	end
	
	it "deveria retornar inválido se o no. de piratas e pedras forem iguais mas valores diferentes" do
	  l = Loot.new(2, [5,4])
		l.split.should == "Inválido"
	end
	
	it "1 pirata com 2 pedras diferentes deveria retornar as duas pedras" do
	  l = Loot.new(1, [5,4])
		l.split.should == [[5,4]]
	end
 it "2 piratas mas com 2 pedras diferentes deve retornar invalido" do
	  l = Loot.new(3, [3,6,3])
		l.split.should == "Inválido"
	end
	
end