programa {
  funcao inicio() {
    cadeia filmes[10] = {"O Agente Secreto","Pecadores","Uma Batalha Após a Outra","Marty Supreme","Frankenstein","Valor Sentimental","Hamnet","Bugonia","F1","Sonhos de Trem"}
    inteiro notaFime[10][13], maiorNota=0, menorNota=0

    //COLETA DE NOTAS
    para(inteiro i=0; i<10; i++){
      para(inteiro j=0; j<12; j++){
        escreva("Crítico ", i+0, "\n")
        // RECEBIMENTO E SANITIZAÇÃO DO INPUT DAS NOTAS
        faca{
          escreva("\nDigite a nota para o filme ", filmes[i], ": ")
          leia(notaFime[i][j])
          se(notaFime[i][j]<0 ou notaFime[i][j]>10){
            escreva("\nApenas serão aceitas notas entre 0 e 10, com extremos inclusos.")
          }
        }enquanto(notaFime[i][j]<0 ou notaFime[i][j]>10)
        
      }
    }

    // IDENTIFICAÇÃO DA MAIOR E DA MENOR NOTA
    para(inteiro  i=0; i<10; i++){
      para(inteiro  j=0; j<12; j++){
        //IDENTIFICANDO A MAIOR
       se(notaFime[i][j]>maiorNota){
          maiorNota = notaFime[i][j]
       }
        // IDENTIFICANDO  A MENOR
        se(notaFime[i][j]<menorNota){
          maiorNota = notaFime[i][j]
        } 
      } 
    }


  }
}
