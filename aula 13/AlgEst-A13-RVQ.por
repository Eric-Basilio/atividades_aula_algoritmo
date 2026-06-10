programa {
  inteiro qtd_itens = 10, i
  cadeia lista[qtd_itens]

  funcao salvarLista(){
    para(i = 0; i < qtd_itens; i++){
      escreva("======= Painel de Registro de Itens =======")
      escreva("\n\nDigite o item ", i+1, ": ")
      leia(lista[i])
      limpa()
    }
  }

  funcao listaInversa(){
    para(i = (qtd_itens-1); i>=0; i--){
     escreva("Item ", i+1 ,": ",lista[i], "\n")
    }
  }

  funcao inicio() {
    salvarLista()
    listaInversa()
    
  }
}
