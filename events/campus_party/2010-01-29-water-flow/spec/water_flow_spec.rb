require "lib/water_flow"

describe WaterFlow do

  it "deve ser [[5,0],[0,5]] para 2 caixas, 5 litros iniciais e cano com vazao de 5 l/s" do
    water_flow = WaterFlow.new(2, 5, 5)
    water_flow.fluxo.should == [[5,0],[0,5]]
  end

end
