programa {
  inteiro quarto, dia
  caracter disponibilidade[20][30], continuar

//funcão que mosta a tabela de reservas e dias
  funcao disponibilidade(){
    faca {
      limpa()
      continuar = '0'

      //cabeçalo com os números dos dias
      escreva("Dias      ")
      para (inteiro i = 0; i<=30; i++){
        se(i<8){
          escreva(i+1,"  ")
        } senao escreva(i+1,"  ")
      }
      escreva("\n")
      //coluna com os quartos
      para (inteiro i = 0; i<20; i++){
        se(i < 10){
          escreva("Quarto  ", i+1, " ")
        } senao se (i>=10){
          escreva("Quarto ", i+1, " ")
        }
        //matriz com as disponibilidades
        para (inteiro j = 0; j <30; j++){
          escreva(disponibilidade[i][j])
          escreva(" ")
        }
        escreva("\n")
      }
      escreva("\nDeseja voltar ao menu anterior? \n[1] SIM \n[2] NÃO \n Escolha: ")
            leia(continuar)
    } enquanto (continuar != '1')
    limpa()
  }

// função que reserva um quarto
  funcao reservarQuarto(){
    inteiro conta_reserva = 0

    continuar = '0'

    faca{
      conta_reserva = 0
      limpa()
      escreva("\nEscolha o dia de 1 a 30: ")
      leia(dia)
      // ocupa o primeiro quarto disponível
      para(inteiro i = 0; i<20 e conta_reserva<1; i++){
        se (disponibilidade[i][dia-1]=='L'){
          disponibilidade[i][dia-1] = 'X'
          conta_reserva = conta_reserva +1
          escreva("\nReserva realizada com sucesso para o quarto ", i+1, " no dia ", dia, "!")
        }
      } se (conta_reserva == 0 ) {
          escreva("\nNenhum quarto disponível para a data.")
        }
      escreva("\nDeseja reservar mais algum quarto? \n[1] SIM \n[2] NÃO \nEscolha: ")
      leia(continuar)
    } enquanto (continuar != '2')
    limpa()   
  }

//função para cancelar a reserva
  funcao cancelarReserva(){
    continuar = '0'

    faca{
      limpa()
      escreva("\nEscolha o quarto da reserva a cancelar: ")
      leia(quarto)
      escreva("\nEscolha o dia da reserva a cancelar: ")
      leia(dia)
      
      se(disponibilidade[quarto-1][dia-1] == 'X'){
        disponibilidade[quarto-1][dia-1] = 'L'
        escreva("\nReserva cancelada com sucesso!")
      } senao {
        escreva("\nNão há reservas para a data selecionada.")
      }

      escreva("\n\nDeseja cancelar mais algum dia? \n[1] SIM \n[2] NÃO \nEscolha: ")
      leia(continuar)
    } enquanto (continuar!='2')
    limpa()
  }

//inicio
  funcao inicio() {
    inteiro opcao

    //definindo todos os dias como livres
    para (inteiro i =0; i<20; i++){
      para (inteiro j = 0; j <30; j++){
        disponibilidade[i][j]= 'L'
      }
    }

    // menu inicial
    faca{
      escreva("=======PÁGINA INICIAL=======")
      escreva("\n\n[1] EXIBIR RESERVAS")
      escreva("\n[2] RESERVAR QUARTO")
      escreva("\n[3] CANCELAR QUARTO")
      escreva("\n[4] SAIR")
      escreva("\nEscolha: ")
      leia(opcao)

      escolha(opcao){
        caso 1:
          disponibilidade()
        pare

        caso 2:
          reservarQuarto()
        pare

        caso 3:
          cancelarReserva()
        pare
        
      }
    } enquanto(opcao !=4)



  }
}
