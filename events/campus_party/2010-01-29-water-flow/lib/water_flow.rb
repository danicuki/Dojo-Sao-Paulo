class WaterFlow

  def initialize(numero_caixas, litros_iniciais, *vazao_canos)
    @litros_iniciais = litros_iniciais
    @vazao_canos = vazao_canos
  end

  def fluxo
    return [[@litros_iniciais,0],[0,@litros_iniciais]] if @litros_iniciais == @vazao_canos[0]
    [[@litros_iniciais,0],[@litros_iniciais/2,@litros_iniciais/2],[0,@litros_iniciais]]
  end

end
