programa {
  funcao inicio() {
    real nota, soma_nota = 0, media, maior, menor
    inteiro contador = 0, total_alunos

    escreva("Digite a quantidade de alunos: ")
    leia(total_alunos)
    limpa()
    faca{
      se (contador == 0){
        escreva("Digite a nota: ")
        leia (nota)
        maior = nota
        menor = nota
      } senao{
        escreva("Digite a nota: ")
        leia (nota)

        se(nota>maior){
          maior = nota
        } senao se(nota == maior){
          maior = maior
        } senao se (nota == menor){
          menor = nota
        } senao se (nota < menor){
          menor = nota
        }
      }
      soma_nota = soma_nota + nota
      contador = contador +1
      limpa()
    } enquanto (contador <total_alunos)
    media = soma_nota/total_alunos
    escreva("\nA maior nota foi: ", maior,".")
    escreva("\nA menor nota foi: ", menor,".")
    escreva("\nA média de notas foi: ", media,".")
    
  }
}
