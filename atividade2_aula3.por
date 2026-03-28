programa {
  funcao inicio() {
    cadeia produto
    real preco_original, percentual_desconto, preco_c_desconto

    escreva("Digite o nome do produto: ")
    leia(produto)
    escreva("Digite o preço original do produto: ")
    leia(preco_original)
    escreva("Digite o percentual de desconto do produto: ")
    leia(percentual_desconto)
    preco_c_desconto = preco_original*(1-(percentual_desconto/100))
    escreva("O preço final com desconto é: ", preco_c_desconto)

  }
}