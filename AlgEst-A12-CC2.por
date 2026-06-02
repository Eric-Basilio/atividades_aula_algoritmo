programa {
  funcao inicio() {
    inteiro  quantidade_jogadores, qtd0 =0, qtd1 =0, numero_escolhido[10]
    cadeia jogador[10], vencedor

    faca{
      escreva("\nDigite a quantidade de jogadores: ")
    leia(quantidade_jogadores)
    } enquanto(quantidade_jogadores <= 0 ou quantidade_jogadores >10)
    limpa()

    para(inteiro i =0; i<quantidade_jogadores; i++){
      escreva("\nDigite o nome do jogador ", i+1,": ")
      leia(jogador[i])
      escreva("\nDigite o número escolhido: ")
      leia(numero_escolhido[i])
      limpa()
    }

    para(inteiro i=0; i <quantidade_jogadores; i++){
      se(numero_escolhido[i] == 0){
        qtd0 = qtd0 +1
      } senao se(numero_escolhido[i]==1){
        qtd1 = qtd1 +1
      }
    }

    se(qtd0 > 1 e qtd1>1){
      escreva("Não há vencedores.")
    } senao se (qtd0 == 1 e qtd1 >1){
     para(inteiro i = 0; i < quantidade_jogadores; i++){
      se(numero_escolhido[i]==0){
        vencedor = jogador[i]
      }
     }
    } senao se (qtd0 > 1 e qtd1 == 1){
     para(inteiro i = 0; i < quantidade_jogadores; i++){
      se(numero_escolhido[i]==1){
        vencedor = jogador[i]
      }
     }
    }

    escreva("\nO vencedor foi: ", vencedor)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */