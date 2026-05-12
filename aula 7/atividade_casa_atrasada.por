programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro geometria, continuar=0
    real area, lado1, lado2, altura, raio

    enquanto(continuar != 2){
    escreva("Escolha qual é o tipo de geometria da figura cuja área será calculada.\n[1] RETÂNGULO\n[2] TRIÂNGULO\n[3] CÍRCULO")
    escreva("\nEscolha: ")
    leia(geometria)
    se (geometria==1){
      limpa()
      escreva("Geometria escolhida: RETÂNGULO.")
      escreva("\nDigite o primeiro lado: ")
      leia(lado1)
      escreva("Digite o segundo lado: ")
      leia(lado2)
      area = lado1 * lado2
      u.aguarde(500)
      limpa()
      escreva("\nA área do seu retângulo é: ",area, "unidades.")
    }
    senao se(geometria ==2){
      limpa()
      escreva("Geometria escolhida: TRIÂNGULO.")
      escreva("\nDigite o tamanho da base: ")
      leia(lado1)
      escreva("Digite o tamanho da altura: ")
      leia(altura)
      area = (lado1 * altura)/2
      u.aguarde(500)
      limpa()
      escreva("\nA área do seu triângulo é: ",area, "unidades.")
    }
    senao se (geometria ==3){
      limpa()
      escreva("Geometria escolhida: CÍRCULO.")
      escreva("\nDigite o tamanho do raio: ")
      leia(raio)
      area = 3.1415*(raio*raio)
      u.aguarde(500)
      limpa()
      escreva("\nA área do seu círculo é: ",area, "unidades.")
    }
    senao {
      limpa()
      escreva("\nEscolha uma opção válida.")
    }
    escreva("\nDeseja verificar a área de alguma outra figura? \n[1] SIM \n[2] NÃO\nEscolha:")
    leia(continuar)
    limpa()
    }
    
  }
}
