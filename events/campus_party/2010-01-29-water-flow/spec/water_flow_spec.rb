 require "lib/water_flow"

 describe WaterFlow do

   context "para 2 caixas" do

     it "deve ser [[5,0],[0,5]] com 5 litros iniciais e cano com vazao de 5 L/s" do
       water_flow = WaterFlow.new(2, 5, 5)
       water_flow.fluxo.should == [[5,0],[0,5]]
     end

     it "deve ser [[10,0],[0,10]] com 10 litros iniciais e cano com vazao de 10 L/s" do
       water_flow = WaterFlow.new(2, 10, 10)
       water_flow.fluxo.should == [[10,0],[0,10]]
     end

     it "deve ser [[10,0],[5,5],[0,10]] com 10 litros iniciais e cano com vazao de 5 L/s" do
       water_flow = WaterFlow.new(2, 10, 5)
       water_flow.fluxo.should == [[10,0],[5,5],[0,10]]
     end

     it "deve ser [[10,0],[0,10]] com 10 litros iniciais e cano com vazao de 11 L/s" do
       water_flow = WaterFlow.new(2, 10, 11)
       water_flow.fluxo.should == [[10,0],[0,10]]
     end

     it "deve ser [[10,0],[4,6],[10,0]] com 10 litros iniciais e cano com vazao de 6 L/s" do
       water_flow = WaterFlow.new(2, 10, 6)
       water_flow.fluxo.should == [[10,0],[4,6],[0,10]]
     end

   end

 end
