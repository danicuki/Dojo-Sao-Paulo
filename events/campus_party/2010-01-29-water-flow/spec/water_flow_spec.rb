 require "lib/water_flow"

 describe WaterFlow do

   context "para 2 caixas" do

     it "deve ser [[5,0],[0,5]] com 5 litros iniciais e cano com vazao de 5 l/s" do
       water_flow = WaterFlow.new(2, 5, 5)
       water_flow.fluxo.should == [[5,0],[0,5]]
     end

     it "deve ser [[10,0],[0,10]] com 10 litros iniciais e cano com vazao de 10 l/s" do
       water_flow = WaterFlow.new(2, 10, 10)
       water_flow.fluxo.should == [[10,0],[0,10]]
     end

   end


 end
