programa {
  inclua biblioteca Util --> u 
  funcao inicio() {
    cadeia senha_correta="123",senha_formulario
    inteiro tentativa = 0

    faca{
      se(senha_formulario != senha_correta e tentativa >= 1){
        limpa()
        escreva("Senha incorreta.\nTente novamente.\n")
        u.aguarde(1500)
        limpa()
      }
      escreva("Digite sua senha: ")
      leia(senha_formulario)
      tentativa = tentativa +1
      
    } enquanto(senha_formulario != senha_correta e tentativa <3)
    se(tentativa <3){
      limpa()
      escreva("Senha correta.\nAcesso autorizado.")
    } senao se (tentativa >= 3){
      limpa()
      escreva("Senha bloqueada.")
    }
  }
}

