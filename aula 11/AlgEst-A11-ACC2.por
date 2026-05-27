programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro habilidade, forca, defesa, vida, orcs, ataque, ataque_orc, sorte
    cadeia enter
    logico morreu = falso

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
    escreva("\nPrecione enter para continuar: ")
    leia(enter)
    u.aguarde(1000)
    limpa()
    
    // COMEÇA ATIVIDADE 2
    escreva("\nVocê recebu a nobre missão de resgatar a princesa das garras de um terrível dragão!")
    escreva("\nEle a levou para uma caverna, mas cuidado, pois a entrada da caverna é protegida por Orcs!")
    escreva("\n--Precione Enter para ir até a caverna do dragão: ")
    leia(enter)
    limpa()
    orcs = u.sorteia(1,4)
    escreva("\nVocê chegou na entrada da caverna e encontrou ", orcs, " Orcs protegendo-a.")
    escreva("\nAtaque rapidamente, antes que eles percebam a sua presença!")
   
    escreva("\n--Precione Enter para atacar um Orc--")
    leia(enter)
    enquanto(orcs > 0 e morreu == falso){
      limpa()
      ataque = u.sorteia(1,6)
      se(ataque <= habilidade){
        escreva("\nVocê derrotou um Orc!")
        orcs = orcs - 1
        se (orcs > 0){
          escreva("\nRestam ", orcs, " orcs.")
          escreva("\n--Precione Enter para atacar um Orc--")
          leia(enter)
        }
      } senao se (ataque > habilidade){
        ataque_orc = u.sorteia(1,3)
        se(vida>=ataque_orc){
          vida = vida-ataque_orc
          escreva("\nPontos de vida: ", vida)
          se(vida <= 0){
            escreva("\nVocê errou o seu ataque, recebeu um soco do Orc e morreu!")
            morreu = verdadeiro
          } senao se (vida>=0) {
            escreva("\nVocê errou o seu ataque e recebeu um soco do Orc!")
            escreva("\n--Precione Enter para atacá-lo novamente: ")
            leia(enter)
          }
        } senao se (vida < ataque_orc){
          escreva("\nVocê errou o seu ataque, recebeu um soco do Orc e morreu!")
          morreu = verdadeiro
        }
      }
    }
    se (morreu == falso){
      escreva("\nParabéns!")
      escreva("\nVocê derrotou todos os Orcs que guardavam a entrada da caverna!")
      escreva("\nAgora, resta salvar a princesa das garras do dragão...")
      escreva("\n--Precione Enter para entrar na caverna do dragão--")
      leia(enter)
      sorte = u.sorteia(1,2)
      se(sorte ==1){
        escreva("\nQue sorte! Perto dos Orcs, você encontou um elixir que melhorou sua saúde!")
        escreva("\n--Precione Enter para tomá-lo--")
        leia(enter)
        vida = vida + u.sorteia(1,10)
        escreva("\nSeus pontos de vida agora são: ", vida, ".")
      }
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3708; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */