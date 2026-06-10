programa {
  inclua biblioteca Matematica --> m
  inclua biblioteca Tipos --> ti
  inteiro dias = 3
  real temperatura[dias]

  funcao registrarTemperaturas(){
    para(inteiro i = 0; i< dias; i++){
      escreva("\nDigite a temperatura do dia ", i+1, ": ")
      leia(temperatura[i])
      limpa()
    }
  }

  funcao mostrarTemperaturas(){
    inteiro continuar = 0
    faca{
      para(inteiro i = 0; i < dias; i++){
      escreva("\nDia: ", i+1)
      escreva("\nTemperatura: ", temperatura[i], "°C")
      escreva(mensagem(temperatura[i]))
      escreva("\n__________________\n")
    }
    escreva("\nDeseja voltar à tela inicial? \n[1] SIM \n[2] NÃO \nEscolha: ")
    leia(continuar)
    limpa()
    } enquanto(continuar !=1)
    
  }

  funcao mediaTemperatuas(){
    real soma_temperaturas = 0, media
    inteiro continuar = 0
    faca{
      para(inteiro i = 0; i<dias; i++){
      soma_temperaturas = soma_temperaturas + temperatura[i]
      }

      media = m.arredondar((soma_temperaturas/dias), 3)
      escreva("\nA média de temperaturas nos ultimos ", dias, " dias é: ", media, "°C")
      escreva("\n\nDeseja voltar à tela inicial? \n[1] SIM \n[2] NÃO \nEscolha: ")
      leia(continuar)
      limpa()
    } enquanto(continuar !=1)
    
  }

  funcao maiorEMenor(){
    real maior = 0, menor =100000000, imenor, imaior, continuar =0
    faca {
      para(inteiro i = 0; i < dias; i++){
      se (temperatura[i]>maior){
        maior = temperatura[i]
        imaior = i
      }
      se(temperatura[i]<menor){
        menor = temperatura[i]
        imenor = i
      }
    }

    escreva("\nDia com maior temperatura: ", imaior+1)
    escreva("\nTemperatura: ", maior, "°C")
    escreva("\n_____________________\n")
    escreva("\nDia com menor temperatura: ", imenor+1)
    escreva("\nTemperatura: ", menor, "°C")
    escreva("\n_____________________\n")
    escreva("\n\nDeseja voltar à tela inicial? \n[1] SIM \n[2] NÃO \nEscolha: ")
    leia(continuar)
    limpa()
    } enquanto (continuar !=1)
    
  }

  funcao maiorQue(real t){
    inteiro continuar = 0

    faca{
     para(inteiro i =0; i<dias; i++){
      se(temperatura[i]>t){
        escreva("\nDia: ", i+1)
        escreva("\nTemperatura: ", temperatura[i])
        escreva("\n_____________________\n")
      }
    }
    escreva("\n\nDeseja voltar à tela inicial? \n[1] SIM \n[2] NÃO \nEscolha: ")
    leia(continuar)
    limpa()
    } enquanto (continuar != 1)
  } 

  funcao menorQue(real t){
    inteiro continuar = 0

    faca{
     para(inteiro i =0; i<dias; i++){
      se(temperatura[i]<t){
        escreva("\nDia: ", i+1)
        escreva("\nTemperatura: ", temperatura[i])
        escreva("\n_____________________\n")
      }
    }
    escreva("\n\nDeseja voltar à tela inicial? \n[1] SIM \n[2] NÃO \nEscolha: ")
    leia(continuar)
    limpa()
    } enquanto (continuar != 1)
  }

  funcao cadeia mensagem(real t){
    se (t>30){
      retorne "\nEstá um dia quente!"
    }
    senao se (t<=30 e t>20){
      retorne "\nEsta é uma temperatura agradável"
    }
    senao se(t<=20 e t>10){
      retorne "\n" + ti.real_para_cadeia(t) + "° é um friozinho legal."
    }
    senao se(t<=10){
      retorne "\n" + ti.real_para_cadeia(t) + "°C? Está bem frio, ein?"
    }
  }


  funcao inicio() {
    inteiro opcao =0
    real t

    faca{
      escreva("========= Tela Inicial =========")
      escreva("\n[1] Registrar temperaturas dos últimos ", dias, " dias.")
      escreva("\n[2] Mostrar os dias e as temperaturas registradas.")
      escreva("\n[3] Calcular a média das temperaturas.")
      escreva("\n[4] Mostrar os dias com a maior e a menor temperatura.")
      escreva("\n[5] Mostrar os dias com temperaturas maiores do que um valor específico.")
      escreva("\n[6] Mostrar os dias com temperaturas menores do que um valor específico.")
      escreva("\n[7] Sair do programa.")
      escreva("\nEscolha: ")
      leia(opcao)

      escolha(opcao){
        caso 1:
        limpa()
        registrarTemperaturas()
        pare
        caso 2:
        limpa()
        mostrarTemperaturas()
        pare
        caso 3:
        limpa()
        mediaTemperatuas()
        pare
        caso 4:
        limpa()
        maiorEMenor()
        pare
        caso 5:
        limpa()
        escreva("\nDigite a temperatura que será comparada: ")
        leia(t)
        maiorQue(t)
        pare
        caso 6:
        limpa()
        escreva("\nDigite a temperatura que será comparada: ")
        leia(t)
        menorQue(t)
        pare
      }
    } enquanto (opcao != 7)
    
  }
}
