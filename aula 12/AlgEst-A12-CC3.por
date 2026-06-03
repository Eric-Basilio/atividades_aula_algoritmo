programa {
  funcao inicio() {
    cadeia pais[3]
    inteiro ouro, prata, bronze, pontos[3], maior_pontuacao=0, primeiro, segundo, terceiro, id_primeiro, id_segundo, id_terceiro

    para(inteiro i=0; i<3; i++){
      escreva("\nDigite o nome do país ", i+1, ": ")
      leia(pais[i])
      escreva("Digite a quantidade de medalhas de OURO: ")
      leia(ouro)
      escreva("Digite a quantidade de medalhas de PRATA: ")
      leia(prata)
      escreva("Digite a quantidade de medalhas de BRONZE: ")
      leia(bronze)
      limpa()
      pontos[i] = ((ouro * 1000) + (prata*100) + (bronze*1))
    }

    para(inteiro i=0; i<3; i++){
      se (pontos[i]>maior_pontuacao){
        maior_pontuacao = pontos [i]
        primeiro = pontos[i]
        id_primeiro = i
      }
    }

    maior_pontuacao =-1
    para(inteiro i =0; i <3; i++){
      se(pontos[i]>maior_pontuacao e pontos[i] != primeiro){
        maior_pontuacao = pontos[i]
        segundo = pontos[i]
        id_segundo = i
      }
    }

    maior_pontuacao =-1
    para(inteiro i =0; i <3; i++){
      se(pontos[i]>maior_pontuacao e pontos[i] != segundo e pontos[i] != primeiro){
        maior_pontuacao = pontos[i]
        terceiro = pontos[i]
        id_terceiro = i
      }
    }

    escreva("\n=====Pódio=======")
    escreva("\n1 - ", pais[id_primeiro])
    escreva("\n2 - ", pais[id_segundo])
    escreva("\n3 - ", pais[id_terceiro])

  }
}
