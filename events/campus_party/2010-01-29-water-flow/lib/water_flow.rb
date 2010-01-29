class WaterFlow

  def initialize(numero_caixas, litros_iniciais, *vazao_canos)
    @litros_iniciais = litros_iniciais
  end

  def fluxo
    [[@litros_iniciais,0],[0,@litros_iniciais]]
  end

end
