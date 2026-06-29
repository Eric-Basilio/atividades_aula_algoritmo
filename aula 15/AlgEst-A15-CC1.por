programa {
  inclua biblioteca Util--> u
  funcao inicio() {
    cadeia filmes[10] = {"O Agente Secreto","Pecadores","Uma Batalha Após a Outra","Marty Supreme","Frankenstein","Valor Sentimental","Hamnet","Bugonia","F1","Sonhos de Trem"}
    real notaFime[10][13], maiorNota=0, menorNota=10, somaNotas=0, media

    //COLETA DE NOTAS
    para(inteiro i=0; i<2; i++){
      para(inteiro j=0; j<12; j++){
        // RECEBIMENTO E SANITIZAÇÃO DO INPUT DAS NOTAS
        faca{
          escreva("Crítico ", j+1, "\n")
          escreva("\nDigite a nota para o filme '", filmes[i], "': ")
          leia(notaFime[i][j])
          se(notaFime[i][j]<0 ou notaFime[i][j]>10){
            limpa()
            escreva("\nApenas serão aceitas notas entre 0 e 10, com extremos inclusos.")
            u.aguarde(3000)
          }
          limpa()
        }enquanto(notaFime[i][j]<0 ou notaFime[i][j]>10)
        
      }
    }

    // IDENTIFICAÇÃO DA MAIOR E DA MENOR NOTA CÁLCULO DE  MÉDIA
    para(inteiro  i=0; i<10; i++){
      para(inteiro  j=0; j<12; j++){
        //IDENTIFICANDO A MAIOR
       se(notaFime[i][j]>maiorNota){
          maiorNota = notaFime[i][j]
       }
        // IDENTIFICANDO  A MENOR
        se(notaFime[i][j]<=menorNota){
          menorNota = notaFime[i][j]
        }
        //INICIO CÁLCULO DA MÉDIA
        somaNotas =  somaNotas  + notaFime[i][j]
      }
      media = (somaNotas-maiorNota-menorNota)/12
      notaFime[i][12]=media

      escreva("Filme: ", filmes[i], ".")
      escreva("\nMédia: ", notaFime[i][12])
      escreva("\n______________________________\n")
    }

  }
}
