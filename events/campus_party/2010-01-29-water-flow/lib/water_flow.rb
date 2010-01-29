class WaterFlow

  def initialize(numero_caixas, litros_iniciais, *vazao_canos)
    @numero_caixas = numero_caixas
    @litros_iniciais = litros_iniciais
    @vazao_canos = vazao_canos
  end

  def fluxo
    return [[@litros_iniciais,0],[0,@litros_iniciais]] if @litros_iniciais == @vazao_canos.first
    [[@litros_iniciais,0],[@litros_iniciais/@numero_caixas,@litros_iniciais/@numero_caixas],[0,@litros_iniciais]]
  end

end
