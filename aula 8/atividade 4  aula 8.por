programa {
  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro cartaj1, cartaj2, maxRodadas = 2, continuar = 0, maiorCarta, pontj1=0, pontj2 = 0

    para(inteiro i=0; i<=(maxRodadas-1); i++){
      

        cartaj1 = u.sorteia(1,13)
        escreva("\n\nA carta sorteada para o jogador 1 foi: ", cartaj1, ". \nDeseja continuar com essa ou quer sortear outra carta?\n[1] Ficar com a carta\n[2] Sortear outra\nEscolha: ")
        leia(continuar)
        escolha(continuar){
          caso 1:
          pare
          caso 2:
            cartaj1 = u.sorteia(1,13)          
          pare
        }

        limpa()
      escreva("\nVocê não pode mais sortear de novo.")
      escreva("\nA carta sorteada para o jogador 1 foi: ", cartaj1, ".")
      cartaj2 = u.sorteia(1,13)
      escreva("\nA carta sorteada para o jogador 2 foi: ", cartaj2,".")

    se(cartaj1 > cartaj2){
      maiorCarta = cartaj1
      pontj1 = pontj1 + 1
    } senao se (cartaj2 > cartaj1){
      maiorCarta = cartaj2
      pontj2 = pontj2 + 1
    } senao {
      escreva("\nNessa rodada deu empate.")
    }

      escreva("\nAs cartas sorteadas foram: ")
      escreva("\nJogador 1: ", cartaj1)
      escreva("\nJogador 2: ", cartaj2)

      se (pontj1 > pontj2){
      escreva("\nO vencedor dessa rodada foi o jogador 1 com um total de ", pontj1, " pontos contra ", pontj2, " pontos do jogador 2.")
    } senao se (pontj2 > pontj1) {
      escreva("\nO vencedor dessa rodada foi o jogador 2 com um total de ", pontj2, " pontos contra ", pontj1, " pontos do jogador 1.")
    }

    }
    se (pontj1 > pontj2){
      escreva("\n\nFim de Jogo!")
      escreva("\nO vencedor do jogo foi o jogador 1")
    } senao se (pontj2 > pontj1) {
      escreva("\nO vencedor do jogo foi o jogador 2")
    } senao {
      escreva("\nDeu empate! Bom jogo.")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1839; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */