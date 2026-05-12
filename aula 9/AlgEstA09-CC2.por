programa {
  inclua biblioteca Util -->u
  funcao inicio() {
    inteiro sorteado, chute, validacao =0
    sorteado = u.sorteia(1,100)

    escreva("\n",sorteado, "\n") // apagar antes de ir para produção
    escreva("Um número foi sorteado!\nTeste a sorte e chute um número de 0 a 100: ")
    leia(chute)
    enquanto(validacao != 1){
      se(chute == ""){
        escreva("Você deve digitar um número! \nTente novamente.") 
        validacao = 1
      } 
      senao se (chute <0 ou chute >100){
        escreva("Seu chute tem que ser de 0 a 100.\nTente novamente.")
        validacao = 1
      } 
      senao {
        enquanto(chute != sorteado){
          enquanto(chute > sorteado){
            limpa()
            escreva("\n",sorteado, "\n") // apagar antes de ir para produção
            escreva("Ops, o valor sorteado foi menor que isso!\nVamos de novo.\nEscolha outro número: ")
            leia(chute)
          } enquanto(chute < sorteado){
            limpa()
            escreva("\n",sorteado, "\n") // apagar antes de ir para produção
            escreva("Ops, o valor sorteado foi maior que isso!\nVamos de novo.\nEscolha outro número: ")
            leia(chute)
          }
          }
          escreva("Isso ae!! Você consegiu acertar o número.\nTalves seja um sinal para tentar a mega-sena haha.")
        }
        validacao = 1
      }
    }
    

  }
