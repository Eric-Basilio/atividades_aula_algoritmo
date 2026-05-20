programa {
  inclua biblioteca Util --> u
  inclua biblioteca Tipos --> t
  funcao inicio() {
    inteiro numero, rodada = 0
    cadeia balde="", opcao, resposta

    faca{
      numero = u.sorteia(0,9)
      balde = balde + t.inteiro_para_cadeia(numero, 10)
      escreva("Rodada número ", rodada+1, ".\n")
      se (rodada == 0){
        escreva("O número sorteado é: ",  numero, ".\nPronto? Precione enter para continuar: ")
        leia(opcao)
        limpa()
        //escreva(balde, "\n")
        escreva("Digite  o número memorizado: ")
        leia(resposta)
      limpa()
      }
      senao se (rodada > 0){
        escreva("Agora a sequência a ser memorizada é: ", balde, ".\nPronto? Precione enter para continuar: ")
        leia(opcao)
        limpa()
        //escreva(balde, "\n")
        escreva("Digite  a sequência de números memorizada: ")
        leia(resposta)
        limpa()
      }
      rodada = rodada + 1
      
    } enquanto(resposta == balde)
    limpa()
    escreva("GAME OVER!")
    escreva("\nVocê consegiu memorizar ", rodada-1, " números.")

  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1083; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */