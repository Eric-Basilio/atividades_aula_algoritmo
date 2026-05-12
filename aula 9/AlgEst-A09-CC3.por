programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia segunda="", terca="", quarta="", quinta="", sexta="", sabado="", domingo="", tarefa
    inteiro escolha_dia=0, continuar = 0, sair
    enquanto(escolha_dia!=8){
      escreva("Escolha um dia da semana \n[1] DOMINGO\n[2] SEGUNDA\n[3] TERÇA\n[4] QUARTA\n[5] QUINTA\n[6] SEXTA \n[7] SÁBADO\n[8] ENCERRAR O PROGRAMA\nEscolha: ")
    leia(escolha_dia)
    escolha(escolha_dia){
      caso 1:
      continuar = 0
        limpa()
        se (domingo == ""){
          escreva("Não existem tarefas para este dia ainda.")
          enquanto(continuar!=2){
              escreva("\nDigite a tarefa: ")
              leia(tarefa)
              domingo = domingo + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(domingo)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
            limpa()
          }
          
        } senao {
          escreva("As tarefas registradas até agora são: ")
            escreva(domingo)
            escreva("\nDigite a nova tarefa a ser adicionada: ")
            leia(tarefa)
            limpa()
            domingo = domingo + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(domingo)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
        }
        limpa()
        escreva("Atividades registradas.\nVoltando ao menu inicial")
        u.aguarde(1000)
        limpa()
      pare
       caso 2:
       continuar = 0
        limpa()
        se (segunda == ""){
          escreva("Não existem tarefas para este dia ainda.")
          enquanto(continuar!=2){
              escreva("\nDigite a tarefa: ")
              leia(tarefa)
              segunda = segunda + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(segunda)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
            limpa()
          }
          
        } senao {
          escreva("As tarefas registradas até agora são: ")
            escreva(segunda)
            escreva("\nDigite a nova tarefa a ser adicionada: ")
            leia(tarefa)
            limpa()
            segunda = segunda + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(segunda)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
        }
        limpa()
        escreva("Atividades registradas.\nVoltando ao menu inicial")
        u.aguarde(1000)
        limpa()
      pare
      caso 3:
       continuar = 0
        limpa()
        se (terca == ""){
          escreva("Não existem tarefas para este dia ainda.")
          enquanto(continuar!=2){
              escreva("\nDigite a tarefa: ")
              leia(tarefa)
              terca = terca + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(terca)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
            limpa()
          }
          
        } senao {
          escreva("As tarefas registradas até agora são: ")
            escreva(terca)
            escreva("\nDigite a nova tarefa a ser adicionada: ")
            leia(tarefa)
            limpa()
            terca = terca + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(terca)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
        }
        limpa()
        escreva("Atividades registradas.\nVoltando ao menu inicial")
        u.aguarde(1000)
        limpa()
      pare
      caso 4:
       continuar = 0
        limpa()
        se (quarta == ""){
          escreva("Não existem tarefas para este dia ainda.")
          enquanto(continuar!=2){
              escreva("\nDigite a tarefa: ")
              leia(tarefa)
              quarta = quarta + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(quarta)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
            limpa()
          }
          
        } senao {
          escreva("As tarefas registradas até agora são: ")
            escreva(quarta)
            escreva("\nDigite a nova tarefa a ser adicionada: ")
            leia(tarefa)
            limpa()
            quarta = quarta + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(quarta)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
        }
        limpa()
        escreva("Atividades registradas.\nVoltando ao menu inicial")
        u.aguarde(1000)
        limpa()
      pare
      caso 5:
       continuar = 0
        limpa()
        se (quinta == ""){
          escreva("Não existem tarefas para este dia ainda.")
          enquanto(continuar!=2){
              escreva("\nDigite a tarefa: ")
              leia(tarefa)
              quinta = quinta + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(quinta)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
            limpa()
          }
          
        } senao {
          escreva("As tarefas registradas até agora são: ")
            escreva(quinta)
            escreva("\nDigite a nova tarefa a ser adicionada: ")
            leia(tarefa)
            limpa()
            quinta = quinta + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(quinta)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
        }
        limpa()
        escreva("Atividades registradas.\nVoltando ao menu inicial")
        u.aguarde(1000)
        limpa()
      pare
      caso 6:
       continuar = 0
        limpa()
        se (sexta == ""){
          escreva("Não existem tarefas para este dia ainda.")
          enquanto(continuar!=2){
              escreva("\nDigite a tarefa: ")
              leia(tarefa)
              sexta = sexta + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(sexta)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
            limpa()
          }
          
        } senao {
          escreva("As tarefas registradas até agora são: ")
            escreva(sexta)
            escreva("\nDigite a nova tarefa a ser adicionada: ")
            leia(tarefa)
            limpa()
            sexta = sexta + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(sexta)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
        }
        limpa()
        escreva("Atividades registradas.\nVoltando ao menu inicial")
        u.aguarde(1000)
        limpa()
      pare
      caso 7:
       continuar = 0
        limpa()
        se (sabado == ""){
          escreva("Não existem tarefas para este dia ainda.")
          enquanto(continuar!=2){
              escreva("\nDigite a tarefa: ")
              leia(tarefa)
              sabado = sabado + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(sabado)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
            limpa()
          }
          
        } senao {
          escreva("As tarefas registradas até agora são: ")
            escreva(sabado)
            escreva("\nDigite a nova tarefa a ser adicionada: ")
            leia(tarefa)
            limpa()
            sabado = sabado + "\n- "+ tarefa
            escreva("As tarefas registradas até agora são: ")
            escreva(sabado)
            escreva("\nDeseja adicionar mais uma tarefa?\n[1] SIM\n[2] NÃO\nEscolha: ")
            leia(continuar)
        }
        limpa()
        escreva("Atividades registradas.\nVoltando ao menu inicial")
        u.aguarde(1000)
        limpa()
      pare
    }
    }
    
  }
}
