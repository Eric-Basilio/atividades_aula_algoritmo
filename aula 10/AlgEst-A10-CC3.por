programa {
  inteiro opcao
  logico fim_votacao = falso

  funcao voto_registrado(){
    limpa()
    escreva("\nVoto registrado com sucesso")
    escreva("\nAinda tem mais eleitores para votar?\n[1] SIM\n[2] NÃO\nEscolha: ")
    leia(opcao)
    escolha(opcao){
      caso 1:
      fim_votacao = falso
      pare
      caso 2:
      fim_votacao = verdadeiro
      pare
    }
  }

  funcao inicio() {
    cadeia id, id_concat ="", vencedor
    inteiro voto, cand1=0, cand2=0, cand3=0

    faca{
      limpa()
      escreva("Por favor, digite sua identidade: ")
      leia(id)
      id_concat = id_concat + "\n- " + id
      limpa()
      escreva("Vote em um dos candidatos:\n[1] Candidato 1\n[2] Candidato 2\n[3] Candidato 3\nEscolha: ")
      leia(voto)
      escolha(voto){
        caso 1:
        cand1 = cand1 + 1
        voto_registrado()
        pare
        caso 2:
        cand2 = cand2 + 1
        voto_registrado()
        pare
        caso 3:
        cand3 = cand3 + 1
        voto_registrado()
        pare
      }
    } enquanto(fim_votacao != verdadeiro)
    limpa()
    escreva("\nTodos os eleitores que votaram foram:\n",id_concat)
    escreva("\nVotos totais por candidato: \nCandidato 1: ", cand1, "\nCandidato 2: ", cand2, "\nCandidato 3: ", cand3)

    se(cand1>cand2 e cand1>cand3){
      vencedor = "Candidato 1"
      escreva("\nO vencedor foi: ", vencedor)
    }
    senao se (cand2>cand1 e cand2>cand3){
      vencedor = "Candidato 2"
      escreva("\nO vencedor foi: ", vencedor)
    }
    senao se (cand3>cand1 e cand3>cand2){
      vencedor = "Candidato 3"
      escreva("\nO vencedor foi: ", vencedor)
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1641; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */