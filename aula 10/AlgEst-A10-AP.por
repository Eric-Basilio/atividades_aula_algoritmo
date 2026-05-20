programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro n_musica, opcao, primeira_musica
    cadeia musica = ""

    n_musica = u.sorteia(1,10)
    primeira_musica = n_musica

    faca{
      escolha(n_musica){
        caso 1:
        musica = "Novacane"
        pare
        caso 2:
        musica = "Aerials"
        pare
        caso 3:
        musica = "Toxicity"
        pare
        caso 4:
        musica = "Chop Suey"
        pare
        caso 5:
        musica = "Lonely Day"
        pare
        caso 6:
        musica = "Spiders"
        pare
        caso 7:
        musica = "Radio/Video"
        pare
        caso 8:
        musica = "Prision Song"
        pare
        caso 9:
        musica = "Forest"
        pare
        caso 10:
        musica = "Question!"
        pare
      }
      se (opcao == 2 ){
        escreva("Tocando a música ", musica, " novamente\n")
      }

      escreva("Tocando a música ", musica)
      escreva("\nEscolha o que fazer agora:\n[1] Tocar a próxima música\n[2] Tocar novamente a música atual\n[3] Tocar novamente desde o início\n[4] Parar de tocar\nEscolha: ")
      leia(opcao)
      

      escolha(opcao){
        caso 1:
        se (n_musica == 10){
        n_musica = 1  
        }
        senao se (n_musica < 10){
          n_musica = n_musica + 1
        }
        limpa()
        pare
        caso 2:
        
        limpa()
        pare
        caso 3:
        n_musica = primeira_musica
        escreva("Tocando desde o início.")
        limpa()
        pare
      }

    } enquanto(opcao != 4)

  }
}
