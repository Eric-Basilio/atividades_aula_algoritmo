programa {
  caracter memo[5][6] = {{'A','K','R','V','B','S'},
                        {'K','D','E','F','A','X'},
                        {'R','E','O','P','W','H'},
                        {'B','F','V','S','W','T'},
                        {'X','D','P','T','H','O'}
    },  acertos[5][6]

  funcao iniciarAcertos(){
    para (inteiro i = 0; i<5; i++){
      para (inteiro j = 0; j<6; j++){
        acertos[i][j]='█'
      }
    }
  }

  funcao mostrarAcertos(){
    para (inteiro i = 0; i<5; i++){
      para (inteiro j =0; j<6; j++){
        escreva(acertos[i][j])
      }
      escreva("\n")
    }
  }

  funcao mostrarEscolhas(inteiro l1, inteiro c1, inteiro l2, inteiro c2){
    para (inteiro i = 0; i<5; i++){
      para (inteiro j =0; j<6; j++){
        se(l1 == i e c1 == j ){
          //acertos[i][j] = memo[i][j]
          escreva(memo[i][j])
        }
        se (l2 == i e c2 == j){
          //acertos[i][j] = memo[i][j]
          escreva(memo[i][j])
        } senao{
          escreva(acertos[i][j])
        } 
      }
      escreva("\n")
    }
  }

  funcao inicio() {
    inteiro l1, c1, l2, c2, pontos = 0
    cadeia enter

    iniciarAcertos()

    faca{
      mostrarAcertos()
      //lendo as coordenadas
      escreva("\nDigite a coordenada da linha da PRIMEIRA carta que deseja virar: ")
      leia(l1)
      escreva("\nDigite a coordenada da coluna da PRIMEIRA carta que deseja virar: ")
      leia(c1)
      escreva("\nDigite a coordenada da linha da SEGUNDA carta que deseja virar: ")
      leia(l2)
      escreva("\nDigite a coordenada da coluna da SEGUNDA carta que deseja virar: ")
      leia(c2)
      limpa()

      //mostrando cartas viradas
      mostrarEscolhas(l1, c1, l2, c2)

      //verificando de o usuário acertou
      se(memo[l1][c1] == memo[l2][c2]){
        acertos[l1][c1] = memo[l1][c1]
        acertos[l2][c2] = memo[l2][c2]
        escreva("\nVocê acertou!")
        pontos = pontos + 1
      } senao{
        escreva("\nErrou! Tente novamente.")
      } 
      escreva("\nPontuação atual: ", pontos)
      escreva("\nPrecione ENTER para continuar: ")
      leia(enter)
      limpa()
    } enquanto(pontos <=15)
    escreva("Fim de jogo.")
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */