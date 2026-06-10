programa {
  inclua biblioteca Matematica --> m
  inteiro qtd_candidatos = 3 // ao fim mudar para 10
  cadeia candidato[qtd_candidatos]
  inteiro votos[qtd_candidatos]
  real percentual[qtd_candidatos]

  funcao salvarCandidatos(){
    para(inteiro i = 0; i < qtd_candidatos; i++){
      escreva("========= Inserir Candidatos =========")
      escreva("\nDigite o nome: ")
      leia(candidato[i])
      escreva("\nDigite a quantidade de votos de ", candidato[i], ": ")
      leia(votos[i])
      limpa()
    }
  }

  funcao calcularPercentuais(){
    inteiro total_votos = 0, i = 0

    para(i = 0; i < qtd_candidatos; i++){
      total_votos = total_votos + votos[i]
    }

    para(i = 0; i < qtd_candidatos; i++ ){
      percentual[i] = m.arredondar((votos[i]/total_votos)*100, 2)
    }
  }

  funcao cadeia identificarVencedor(){
    inteiro i = 0,  maior_voto = 0, indice = 0

    para(i = 0; i < qtd_candidatos; i++){
      se (votos[i] > maior_voto){
        maior_voto = votos[i]
        indice = i
      } senao {
        indice = indice
      }
    }

     retorne candidato[indice]
  }

  funcao inicio() {
    cadeia vencedor
    salvarCandidatos()
    calcularPercentuais()
    vencedor = identificarVencedor()

    escreva("\n===== Resumo =====")
    para(inteiro i =0; i < qtd_candidatos; i++){
      escreva("\nCandidato: ", candidato[i])
      escreva("\nPercentual de votos: ", percentual[i], "%")
      escreva("\n_______________________\n")
    }
    escreva("\nCandidato vencedor: ", vencedor)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */