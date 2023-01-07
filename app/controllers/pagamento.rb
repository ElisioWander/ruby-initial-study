module Pagamento
  SIMBOLO_MOEDA = "$"

  def pagar(valor_final)
    puts "Deseja pagar com o cartão?"
    opcao = gets.chomp

    if opcao == "S"
      puts "Pagando com o cartão"
    else 
      puts "Pagando com o dinheiro"
    end
  end

  class Pagseguro
    def initialize
      puts "Usando o Pagseguro"
    end
  end
end