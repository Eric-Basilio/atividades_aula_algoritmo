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
    para(inteiro  i=0; i<2; i++){
      para(inteiro  j=0; j<12; j++){
        //IDENTIFICANDO A MAIOR
        se(notaFime[i][j]>maiorNota){
            maiorNota = notaFime[i][j]
        }
        // IDENTIFICANDO  A MENOR
        se(notaFime[i][j]<=menorNota){
          menorNota = notaFime[i][j]
        }
        //SOMATÓRIO DE NOTAS
        somaNotas =  somaNotas  + notaFime[i][j]
      }
      //CÁLCULO DA MÉDIA
      media = (somaNotas-maiorNota-menorNota)/10
      notaFime[i][12]=media
      
      //MOSTRANDO OS FILMES E SUAS MÉDIAS
      escreva("Filme: '", filmes[i], "'.")
      escreva("\nMédia: ", notaFime[i][12])
      se(media>9){
        escreva("\nComentáio: Forte candidato!")
      } senao se(media>8 e media<=9){
        escreva("\nComentário: Boas chances!")
      } senao {
        escreva("\nComentário: Azarão.")
      }
      escreva("\n______________________________\n\n")

      // REINICIANDO VARIÁVEIS
        somaNotas = 0
        maiorNota = 0
        menorNota = 10
    }
  }
}
