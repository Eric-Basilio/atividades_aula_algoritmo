programa {
  inclua biblioteca Util --> u
  inclua biblioteca Texto --> t
  funcao inicio() {
    inteiro aleatorio, rodas_total, acertos = 0, penultima
    cadeia animal = "", resposta

    faca{
      limpa()
aleatorio = u.sorteia(1,20)
    escolha(aleatorio){
      caso 1:
        animal = "Leão"
        pare
      caso 2:
        animal = "Elefante"
        pare
      caso 3:
        animal = "Cachorro"
        pare
      caso 4:
        animal = "Gato"
        pare
      caso 5:
        animal = "Cavalo"
        pare
      caso 6:
        animal = "Macaco"
        pare
      caso 7:
        animal = "Urso"
        pare
      caso 8:
        animal = "Pombo"
        pare
      caso 9:
        animal = "Galinha"
        pare
      caso 10:
        animal = "Águia"
        pare
      caso 11:
        animal = "Coruja"
        pare
      caso 12:
        animal = "Papagaio"
        pare
      caso 13:
        animal = "Pato"
        pare
      caso 14:
        animal = "Beija-flor"
        pare
      caso 15:
        animal = "Formiga"
        pare
      caso 16:
        animal = "Abelha"
        pare
      caso 17:
        animal = "Borboleta"
        pare
      caso 18:
        animal = "Mosquito"
        pare
      caso 19:
        animal = "Besouro"
        pare
      caso 20:
        animal = "Grilo"
        pare
    }
    penultima = t.numero_caracteres(animal)-1
    inteiro total = t.numero_caracteres(animal)
    escreva(animal)
    escreva("\nO total de letras é: ", t.numero_caracteres(animal),"." ,"\nAs duas primeiras letras são: ", t.extrair_subtexto(animal, 0, 2),".","\nA última letra é: ", t.extrair_subtexto(animal, penultima, total),".")
    escreva("\nDigite seu chute: ")
    leia(resposta)
    se(resposta == animal){
      acertos = acertos + 1
    }
    escreva("\nVoce tem ", acertos, " pontos.")
    } enquanto(resposta == animal e acertos < 3)
    limpa()
    se (acertos > 0 e acertos < 7){
      escreva("\nFim de jogo!\nVocê somou um total de ", acertos, " pontos.")
    } senao se (acertos == 7){
      escreva("Parabéns, você chegou ao fim do jogo.")
    }
    senao se (acertos == 0){
      escreva("\nFim de jogo!\nVocê não somou pontos.")
    }
    
  
  }
}
