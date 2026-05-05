programa {
  funcao inicio() {
    real peso, altura, mediaAlturas, mediaPesos, maiorPeso = 0, menorPeso = 0, maiorAltura = 0, menorAltura = 0, somaPesos = 0, somaAlturas = 0, imcMedio
    inteiro totalAlunos = 30

    para(inteiro i=0; i<=totalAlunos-1; i++){

      escreva("Digite o peso do ", i+1,"º aluno: ")
      leia(peso)
      escreva("Digite a altura do ", i+1,"º aluno: ")
      leia(altura)

      // definindo maior e menor peso
      se (peso>maiorPeso){
        maiorPeso = peso
      }
      se(i ==0){
        menorPeso = peso
      } senao {
        se (peso < menorPeso){
          menorPeso = peso
        }
      }

      //definindo as alturas
      se(altura > maiorAltura){
        maiorAltura = altura
      }
      se(i==0){
        menorAltura = altura
      } senao {
        se (altura < menorAltura){
          menorAltura = altura
        }
      }

      somaPesos = somaPesos + peso
      somaAlturas = somaAlturas + altura
    }
    
    mediaAlturas = somaAlturas/totalAlunos
    mediaPesos = somaPesos/totalAlunos
    imcMedio = (mediaPesos/(mediaAlturas*mediaAlturas))

    escreva("A maior altura registrada foi: ", maiorAltura)
    escreva("\nA menor altura foi: ", menorAltura)
    escreva("\n\nO maior peso foi: ", maiorPeso)
    escreva("\nO menor peso foi: ", menorPeso)
    escreva("\n\nA média das alturas é: ", mediaAlturas)
    escreva("\nA média dos pesos é: ", mediaPesos)
    escreva("O IMC médio é: ", imcMedio)

  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */