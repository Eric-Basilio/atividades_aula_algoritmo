programa {
  inclua biblioteca Util --> u

  inteiro habilidade, forca, defesa, vida, orcs, ataque, ataque_orc, sorte
    inteiro  vida_dragao =50, forca_ataque =0, primeiro, forca_defesa =0, dano
    inteiro ataque_dragao = 0
    cadeia enter
    logico morreu = falso

  funcao ataque_do_usuario(){

    para(inteiro i =0; i < forca; i++){
      forca_ataque = forca_ataque + u.sorteia(1,6)
    }
    para(inteiro i = 1; i<=3; i++){
      forca_defesa = forca_defesa + u.sorteia(1,6)
    }
    dano = forca_ataque - forca_defesa
    se (dano > 0 ){
      vida_dragao = vida_dragao - dano
      escreva("\nVida do dragão: ", vida_dragao, ".")
      escreva("\nBom ataque! Você acertou o dragão!")
      escreva("\n--Precione Enter para continuar--")
      leia(enter)
    }
  }

  funcao ataque_do_dragao(){
    //ATAQUE DO DRAGÃO
    ataque_dragao = u.sorteia(1,6)
    se(ataque_dragao <=3){
      forca_ataque =0
      forca_defesa = 0
      dano = 0
      para (inteiro i = 1; i <=3; i++){
        forca_ataque = forca_ataque + u.sorteia(1,6)
      }
      para(inteiro i = 0; i < defesa; i++){
        forca_defesa = forca_defesa + u.sorteia(1,6)
      }
      dano = forca_ataque  - forca_defesa
      se(dano>0){
        vida = vida - dano
        escreva("\nPontos de vida: ", vida, ".")
      }
      se(vida > 0){
          escreva("\nO dragão te acertou!")
          escreva("\nFique mais atento na próxima!")
          escreva("\n--Precione Enter para continuar--")
          leia(enter)
        } senao se(vida < 0){
          escreva("\nO dragão te acertou e você morreu!")
          morreu = verdadeiro
        }
    }
  }

  funcao inicio() {
    

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
        u.aguarde(750)
      }
      limpa()

      // COMEÇA ATIVIDADE 3
        escreva("\nVocê entrou na caverna e encontrou a princesa!")
        escreva("\nMas o dragão não deixará que a leve facilmente...")
        

        enquanto(vida_dragao > 0 e morreu == falso){
          primeiro = u.sorteia(1,2) // SE 1: O USUÁRIO INICIA O ATAQUE; SE 2: O DRAÇÃO INICIA
          
          se(primeiro ==1){
            // ATAQUE DO USUÁRIO
            escreva("\nO usuário inicia atacando")// APAGAR ANTES DE COMMITAR
            escreva("\n--Precione Enter para iniciar o combate contra o dragão--")
            leia(enter)
            ataque = u.sorteia(1,6)
            se(ataque <= habilidade){
              ataque_do_usuario()
              ataque_do_dragao()
            } senao se (ataque > habilidade){
              escreva("\nVocê errou o ataque!")
              escreva("\n--Precione Enter para continuar--")
              leia(enter)
              ataque_do_dragao()
            }
          } senao se (primeiro == 2){
            escreva("\n--O dragão vai começar atacando--")
            ataque = u.sorteia(1,6)
            se(ataque <= habilidade){
              ataque_do_dragao()
              escreva("\nSua vida agora é: ", vida, ".")
              ataque_do_usuario()
            } senao se (ataque > habilidade){
              escreva("\nVocê errou o ataque!")
              escreva("\n--Precione Enter para continuar--")
              leia(enter)
              ataque_do_dragao()
            }
          }
        }
        se (morreu == falso e vida_dragao <=0){
          escreva("\nParabéns!")
          escreva("\nVocê derrotou o dragçao e salvou a princesa")
          escreva("\nAgora retorne ao reino e desfrute da glória!")
        }
    }
  }
}
