programa {
  inclua biblioteca Util --> u

  caracter jogo[3][3] = {{'_', '_', '_'},{'_', '_', '_'},{'_', '_', '_'}}, vencedor = '_', ultimo
  inteiro coluna, linha
  logico valida

  //INSTANCIAÇÃO DE FUNÇÃO PARA LER JOGADA DO X
  funcao jogadaX(){
    valida = verdadeiro
    faca{
      escreva("\nVêz do X\n")
      mostrarJogo()

      // LENDO LINHA COM VERIFICAÇÃO DA VALIDADE DO NÚMERO 
      faca{
        escreva("\nEscolha uma linha de   0 a  2: ")
        leia(linha)
        se(linha<0 ou linha>2){
          escreva("Digite um número válido.")
          u.aguarde(2000)
          limpa()
        }
      }enquanto(linha<0 ou linha>2)

      // LENDO COLUNA COM VERIFICAÇÃO DA VALIDADE DO NÚMERO
      faca{
        escreva("\nEscolha uma coluna de   0 a  2: ")
        leia(coluna)
        se(coluna<0 ou coluna>2){
          escreva("Digite um número válido.")
          u.aguarde(2000)
          limpa()
        }
      }enquanto(coluna<0 ou coluna>2)

      // VERIFICA SE ESPAÇO ESTÁ DISPONÍVEL E SALVA A JOGADA
      limpa()
      se(jogo[linha][coluna]!= '_'){
        escreva("Espaço já utilizado, tente outro.")
        valida = falso
      } senao {
        jogo[linha][coluna]='X'
        escreva("Jogada registrada com sucesso!\n")
        mostrarJogo()
        valida = verdadeiro
      }
    }enquanto(valida == falso)
    ultimo = 'X'
  }

  // FUNÇÃO PARA LERA JOGADA DO O
  funcao jogadaO(){
    // LENDO LINHA COM VERIFICAÇÃO DA VALIDADE DO NÚMERO
    faca{
      valida = verdadeiro
      escreva("\nVêz do O\n")
      mostrarJogo()
      faca{
        escreva("\nEscolha uma linha de   0 a  2: ")
        leia(linha)
        se(linha<0 ou linha>2){
          escreva("Digite um número válido.")
          u.aguarde(2000)
          limpa()
        }
      }enquanto(linha<0 ou linha>2)

      // LENDO COLUNA COM VERIFICAÇÃO DA VALIDADE DO NÚMERO
      faca{
        escreva("\nEscolha uma coluna de   0 a  2: ")
        leia(coluna)
        se(coluna<0 ou coluna>2){
          escreva("Digite um número válido.")
          u.aguarde(2000)
          limpa()
        }
      }enquanto(coluna<0 ou coluna>2)

      // VERIFICA SE ESPAÇO ESTÁ DISPONÍVEL E SALVA A JOGADA
      limpa()
      se(jogo[linha][coluna]!= '_'){
        escreva("Espaço já utilizado, tente outro.")
      } senao {
        jogo[linha][coluna]='O'
        escreva("Jogada registrada com sucesso!\n")
        mostrarJogo()
      }
    }enquanto(valida == falso)
    ultimo = 'O'
  }

  //FUNÇÃO QUE VERIFICA VENCEDORES
  funcao logico eVencedor(){
    //VERIFICANDO VENCEDOR NA PRIMEIRA LINHA
    se(jogo[0][0] == jogo[0][1] e jogo[0][0] == jogo[0][2] e jogo[0][0] != '_'){
      escreva("O jogador ", jogo[0][0], " venceu essa partida.\n")
      vencedor = jogo[0][0]
      retorne verdadeiro
    } //VERIFICANDO VENCEDOR NA PRIMEIRA COLUNA
    senao se (jogo[0][0] == jogo[1][0] e jogo[0][0] == jogo[2][0] e jogo[0][0] != '_'){
      escreva("O jogador ", jogo[0][0], " venceu essa partida.\n")
      vencedor = jogo[0][0]
      retorne verdadeiro
    } //VERIFICANDO VENCEDOR NA SEGUNDA LINHA
    senao se(jogo[1][0] == jogo[1][1] e jogo[1][0] == jogo[1][2] e jogo[1][0] != '_'){
      escreva("O jogador ", jogo[1][0], " venceu essa partida.\n")
      vencedor = jogo[1][0]
      retorne verdadeiro
    } //VERIFICANDO VENCEDOR NA SEGUNDA COLUNA
    senao se (jogo[0][1] == jogo[1][1] e jogo[0][1] == jogo[2][1] e jogo[0][1] != '_'){
      escreva("O jogador ", jogo[1][0], " venceu essa partida.\n")
      vencedor = jogo[0][1]
      retorne verdadeiro
    } //VERIFICANDO VENCEDOR NA TERCEIRA LINHA
    senao se(jogo[2][0] == jogo[2][1] e jogo[2][0] == jogo[2][2] e jogo[2][0] != '_'){
      escreva("O jogador ", jogo[2][0], " venceu essa partida.\n")
      vencedor = jogo[2][0]
      retorne verdadeiro
    } // VERIFICANDO VENCEDOR NA TERCEIRA COLUNA
    senao se (jogo[0][2] == jogo[1][2] e jogo[0][2] == jogo[2][2] e jogo[0][2] != '_'){
      escreva("O jogador ", jogo[2][0], " venceu essa partida.\n")
      vencedor = jogo[0][2]
      retorne verdadeiro
    } // VERIFICANDO VENCEDOR NA DIAGONAL DECRESCENTE
    senao se(jogo[0][0]==jogo[1][1] e jogo[0][0]==jogo[2][2] e jogo[0][0] != '_'){
      escreva("O jogador ", jogo[0][0], " venceu essa partida.\n")
      vencedor = jogo[0][0]
      retorne verdadeiro
    } // VERIFICANDO VENCEDOR NA DIAGONAL CRESCENTE
    senao se(jogo[2][0]==jogo[1][1] e jogo[2][0]==jogo[0][2] e jogo[2][0] != '_'){
      escreva("O jogador ", jogo[0][0], " venceu essa partida.\n")
      vencedor = jogo[2][0]
      retorne verdadeiro
    } senao retorne falso
    
  }

  funcao mostrarJogo(){
    // MOSTRA O ESTADO ATUAL DO JOGO
      para(inteiro i= 0; i<3;i++){
        para(inteiro j=0; j<3; j++){
          escreva(jogo[i][j], " ")
        }
        escreva("\n")
      }
  }

  funcao inicio() {
    inteiro rodada = 1
    caracter enter

    faca{
      
      //mostrarJogo()

      escreva("\n======RODADA ", rodada, "======\n")

      //RECEBE A JOGADA
      se(rodada==1){
        se(u.sorteia(1,2)==1){
          escreva("O jogador 'X' começa!\n")
          jogadaX()
          //ultimo = 'X'
        } senao  {
          escreva("O jogador 'O' começa!\n")
          jogadaO()
          //ultimo = 'O'
        }
      }  senao {
        se(ultimo == 'X'){
          jogadaO()
        } senao{
          jogadaX()
        }
      }

      //mostrarJogo()

      // VERIFICA SE JÁ HÁ ALGUM VENCEDOR
      se(rodada>=3){
        se (eVencedor() == verdadeiro){
          //escreva("O ", vencedor, " venceu essa partida!\n")
          mostrarJogo()
        }
      }  
      escreva("\nPrecione ENTER para  continuar: ")
      leia(enter)
      rodada = rodada +1
      limpa()
    }enquanto(rodada<=9 e eVencedor() == falso)
    se(rodada==9 e eVencedor()==falso){
      limpa()
      escreva("Deu vela!\nNão houve vencedores.")
    }
    escreva("FIM DE JOGO")


  }
}
