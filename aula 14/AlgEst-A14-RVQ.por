programa {
  funcao inicio() {
    inteiro matNotas[20][3]
    cadeia situacao
    para (inteiro i = 0; i<20; i++){
      para (inteiro j = 0; j<3; j++){
        escreva("Digite a nota ",  j+1, " do(a) aluno(a) ", i+1, ": " )
        leia(matNotas[i][j])
        limpa()
      }
    }
    para (inteiro i = 0; i<3; i++){
      escreva("\nAluno: ", i+1, ".")
      se(matNotas[i][2]>=7){
        escreva("\nSituação: Aprovado") 
      }
      senao se (matNotas[i][2]<7){
        escreva("\nSituação: Reprovado.")
    }
    escreva("\n____________________________\n")
    }
  }
}
