programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro habilidade, forca, defesa, vida
    cadeia enter

    escreva("\nBem-vindo, aventureiro(a)!")
    escreva("\nPrimeiramente, vamos criar seu personagem.")
    escreva("\nPrecione Enter para rolar o dado e determinar sua habilidade: ")
    leia(enter)
    habilidade = u.sorteia(1,5)
    escreva("\nSua habilidade é: ", habilidade, ".")
    escreva("\n\nPrecione Enter para rolar o dado e determinar sua força: ")
    leia(enter)
    forca = u.sorteia(1,5)
    escreva("\nSua força é: ", forca, ".")
    escreva("\n\nPrecione Enter para rolar o dado e determinar sua defesa: ")
    leia(enter)
    defesa = u.sorteia(1,5)
    escreva("\n\nSua defesa é: ", defesa, ".")
    escreva("\n\nPrecione Enter para rolar o dado e determinar os seus pontos de vida: ")
    leia(enter)
    vida = u.sorteia(10,30)
    escreva("\nSua vida é: ", vida, ".")
    u.aguarde(1000)
    limpa()
    escreva("======FICHA COMPLETA DO PERSONAGEM======")
    escreva("\nSua habilidade é: ", habilidade, ".")
    escreva("\nSua força é: ", forca, ".")
    escreva("\nSua defesa é: ", defesa, ".")
    escreva("\nSua vida é: ", vida, ".")
    escreva("\nPonto! Agora, a aventura vai começar...")
  }
}
