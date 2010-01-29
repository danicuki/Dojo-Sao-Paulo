class WaterFlow

  def initialize(numero_caixas, litros_iniciais, *vazao_canos)
    @numero_caixas = numero_caixas
    @litros_iniciais = litros_iniciais
    @vazao_canos = vazao_canos
  end

  def fluxo
    return [[@litros_iniciais,0],[0,@litros_iniciais]] if @litros_iniciais <= @vazao_canos.primeiro
    [[@litros_iniciais,0],[@litros_iniciais - @vazao_canos.primeiro,@vazao_canos.primeiro],[0,@litros_iniciais]]
  end

end

class Array
  def primeiro
    self.first
  end
end
