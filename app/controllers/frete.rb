module Frete
  TABELA_FRETE = {"BA" => 1.95, "SP" => 3.87, "PE" => 2.561}

  def imprimir_tabela_frete
    puts "-----TABELA FRETE-----"

    TABELA_FRETE.each do |key, value|
      puts "#{key} - #{value}"
    end

    puts "----------------------"
  end

  def calcular_valor_final(valor_produto, uf)
    valor_produto * TABELA_FRETE[uf]
  end
end