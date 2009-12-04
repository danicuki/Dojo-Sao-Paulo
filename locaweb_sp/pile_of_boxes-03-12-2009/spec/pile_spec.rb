require "lib/pile"

describe Pile do
	
	context "pilha com 1 caixa" do
		it "de tamanho 5 deve ter altura 5" do
		  pile = Pile.new(5)
			pile.height.should == 5
		end

		it "de tamanho 6 deve ter altura 6" do
		  pile = Pile.new(6)
			pile.height.should == 6
		end
	end
	
	context "pilha com 2 caixas" do
		it "de tamanhos 1 e 1 deve ter altura 2" do
			pile = Pile.new(1,1)
			pile.height.should == 2
		end

		it "de tamanhos 2 e 1 deve ter altura 2" do
			# pending
			pile = Pile.new(2,1)
			pile.height.should == 2
		end
	end
	
	context "pilha com 3 caixas" do
		it "de tamanhos 2, 1 e 1 deve ter altura 2" do
			pile = Pile.new(2,1,1)
			pile.height.should == 2
		end
		
		it "de tamanhos 2, 1 e 2 deve ter altura 4" do
			pile = Pile.new(2,1,2)
			pile.height.should == 4
		end
		
		it "de tamanhos 3, 4, 2 (que fura) deve ter altura de 7" do
			pile = Pile.new(3,4,2)
			pile.height.should == 7
		end
		
		it "de tamanhos 4, 2, 3 (que fura e transborda) deve ter altura de 7" do
			pile = Pile.new(4,2,3)
			pile.height.should == 7
		end
	end
	
	context "pila com n caixas" do
	
		it "exeplos do site (10,4,6,3,11,7,8,5)" do
			pending
			pile = Pile.new(10,4,6,3,11,7,8,5)
			pile.height.should == 29
		end
	end
	
end

describe Box do
	it "deve ser inicializado com o tamanho" do
		box = Box.new(2)
		box.height.should == 2
	end
	
	it "deve ser inicializado com tamanho 2 e ter espaco sobrando 2" do
	  box = Box.new(2)
		box.free_space.should == 2
	end
	
	it "deve conseguir receber uma caixa menor" do
	  box = Box.new(2)
		box.put(Box.new(1))
		box.free_space.should == 1
	end
	
	it "nao deve conseguir receber uma caixa maior" do
	  box = Box.new(2)
	  lambda { box.put(Box.new(3)) }.should raise_error("There`s no space")
	  
	end
end