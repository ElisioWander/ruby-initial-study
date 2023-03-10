require_relative "frete"
require_relative "pagamento"

class Venda
include Frete
include Pagamento

  PRODUTOS = {"PS3" => 900.00, "PS5" => 1600.00}

  def imprimir_produtos
    puts "-----PRODUTOS-----"

    PRODUTOS.each do |key, value|
      puts "#{key} - #{Pagamento::SIMBOLO_MOEDA} #{value}"
    end

    puts "------------------"
  end

  def vender
    puts "Olá, seja bem vindo!"
    puts "O que deseja comprar?"

    imprimir_produtos

    puts "> Digite o nome do produto..."
    produto = gets.chomp

    puts "Para aonde deseja enviar?"

    imprimir_tabela_frete

    puts "> Digite o estado..."
    uf = gets.chomp

    puts "Calculando..."
    valor_final = calcular_valor_final(PRODUTOS[produto], uf)

    puts "Você deve pagar #{Pagamento::SIMBOLO_MOEDA} #{valor_final} do produto + frete"

    puts "Deseja pagar? (S/N)"
    opcao = gets.chomp

    if opcao == "S"
      pagseguro = Pagamento::Pagseguro.new
      pagar(valor_final)
    else
      puts "Okay! Fica para a próxima! :("
    end
  end
end