programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia tipoExtenso
	inteiro tipo, drama = 0, comedia = 0, documentario = 0
	real nota, somaNotas=0, media, percentDrama, percentComedia, percentDoc
		para(inteiro i = 0; i <=11; i++){
      escreva("Escolha o tipo do ", i+1,"º filme\n[1] Drama\n[2] Comédia\n[3] Documentário\nEscolha: ")
      leia(tipo)
      se (tipo == 3){
        documentario = documentario +1
        tipoExtenso = "documentário"
      }
      senao se(tipo == 2){
        comedia = comedia + 1
        tipoExtenso = "comédia"
      }
      senao se (tipo == 1){
        drama = drama + 1
        tipoExtenso = "drama"
      }
      escreva("Agora dê a nota do seu ", i+1," filme: ")
      leia(nota)
      limpa()
      escreva("O ", i+1,"º filme é do tipo ",tipoExtenso, " e ", "receceu nota ", nota, ".")
      u.aguarde(3000)
      limpa()
      somaNotas = somaNotas + nota
    }
    media = somaNotas/12
    percentDrama = (drama/12) *100
    percentComedia = (comedia/12)*100
    percentDoc = (documentario/12)*100
    escreva("A média geral das notas deu: ", media,".")
    escreva("\nAo todo ", percentComedia, "% dos filmes foram de comédia", percentDoc, "% dos filmes foram de documentário e por fim ", percentDrama, "% foram de drama")
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 814; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */